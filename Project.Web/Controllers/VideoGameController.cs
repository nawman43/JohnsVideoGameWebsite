using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Web.DAL;
using Project.Web.Models;

namespace Project.Web.Controllers
{
    public class VideoGameController : Controller
    {
        public ActionResult AdventureGames(int id)
        {
            CategoryIdDAL dal = new CategoryIdDAL();
            List<VideoGameModel> game = dal.GetCategory(id);
            return View("AdventureGames", game);
        }

        public ActionResult FightingGames(int id)
        {
            CategoryIdDAL dal = new CategoryIdDAL();
            List<VideoGameModel> game = dal.GetCategory(id);
            return View("FightingGames", game);
        }

        public ActionResult RPGGames(int id)
        {
            CategoryIdDAL dal = new CategoryIdDAL();
            List<VideoGameModel> game = dal.GetCategory(id);
            return View("RPGGames", game);
        }

        public ActionResult ShooterGames(int id)
        {
            CategoryIdDAL dal = new CategoryIdDAL();
            List<VideoGameModel> game = dal.GetCategory(id);
            return View("ShooterGames", game);
        }

        public ActionResult SportGames(int id)
        {
            CategoryIdDAL dal = new CategoryIdDAL();
            List<VideoGameModel> game = dal.GetCategory(id);
            return View("SportGames", game);
        }

        public ActionResult Detail(int id)
        {
            VideoGameStoreDAL dal = new VideoGameStoreDAL();
            VideoGameModel game = dal.GetGame(id);
            return View("Detail", game);
        }
    }
}