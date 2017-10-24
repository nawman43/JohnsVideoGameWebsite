using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using Project.Web.Models;
using System.Data.SqlClient;

namespace Project.Web.DAL
{
    public class VideoGameStoreDAL : IVideoGameDAL
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["VideoGameStoreDB"].ConnectionString;
        private const string SQL_AllGames = "Select * From products";
        private const string SQL_SingleGame = @"Select * from products where product_id = @id;";

        public List<VideoGameModel> GetAllVideoGames()
        {
            List<VideoGameModel> videoGames = new List<VideoGameModel>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(SQL_AllGames, conn);
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

        public VideoGameModel GetGame(int id)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(SQL_SingleGame, conn);
                    cmd.Parameters.AddWithValue("@id", id);
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();

                    VideoGameModel singleGame = new VideoGameModel();
                    singleGame.ProductID = Convert.ToInt32(reader["product_id"]);
                    singleGame.Name = Convert.ToString(reader["product"]);
                    singleGame.Price = Convert.ToInt32(reader["price"]);
                    singleGame.Description = Convert.ToString(reader["description"]);
                    singleGame.CategoryID = Convert.ToInt32(reader["category_id"]);
                    singleGame.ImageName = Convert.ToString(reader["image"]);
                    singleGame.Trailer = Convert.ToString(reader["video"]);
                    return singleGame;
                }
            }
            catch
            {
                throw;
            }

        }
    }
}