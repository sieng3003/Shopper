using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace ShopperAE.Areas.Administrator.BLL
{
    public class UserBusinessLayer
    {
        public bool IsValidUser(Models.Administrator user)
        {
            if (user.adAcc == "Admin@gmail.com" && user.adPass == "123456")
                return true;
            return false;
        }
    }
}