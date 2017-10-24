using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using Project.Web.Models;
using System.Data.SqlClient;

namespace Project.Web.DAL
{
    public class CategoryIdDAL : IVideoGameDAL
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["VideoGameStoreDB"].ConnectionString;
        private const string SQL_Category = "Select * From products where products.category_id = @categoryid";


        public List<VideoGameModel> GetCategory(int id)
        {
            List<VideoGameModel> videoGames = new List<VideoGameModel>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(SQL_Category, conn);
                    cmd.Parameters.AddWithValue("@categoryid", id);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        VideoGameModel v = new VideoGameModel();
                        v.ProductID = Convert.ToInt32(reader["product_id"]);
                        v.Name = Convert.ToString(reader["product"]);
                        v.Price = Convert.ToDouble(reader["price"]);
                        v.Description = Convert.ToString(reader["description"]);
                        v.CategoryID = Convert.ToInt32(reader["category_id"]);
                        v.ImageName = Convert.ToString(reader["image"]);
                        v.Trailer = Convert.ToString(reader["video"]);
                        videoGames.Add(v);
                    }
                }
            }
            catch (SqlException ex)
            {
                throw;
            }
            return videoGames;
        }

    }
}
