using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Web.DAL;

namespace Project.Web.Controllers
{
    public class HomeController : Controller
    {
        //private IVideoGameDAL dal;
        //public HomeController(IVideoGameDAL dal)
        //{
        //    this.dal = dal;
        //}


        public ActionResult HomePage()
        {
            return View("HomePage");
        }
    }
}