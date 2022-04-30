using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Demo1
{
    public class Product
    {

        GlobalConnection gc = new GlobalConnection();
        public void AddProduct(string Name, string Price, string Quantity, string Status)
        {

            SqlCommand cmd = new SqlCommand("Insert into product(name,price,quantity,status)values (@name,@price,@quantity,@status)", gc.cn);
            cmd.Parameters.AddWithValue("@name", Name);
            cmd.Parameters.AddWithValue("@price", Price);
            cmd.Parameters.AddWithValue("@quantity", Quantity);
            cmd.Parameters.AddWithValue("@status", Status);

            cmd.ExecuteNonQuery();
            gc.cn.Close();

        }
        public DataTable SelectRecords()
        {
            string sql = "SELECT * FROM product";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "product");
            return ds.Tables[0];
        }
    }
}
