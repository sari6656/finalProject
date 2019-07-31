using BL.Helpers;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebService.Controllers
{
    [RoutePrefix("API/User")]
    public class UsersController : Controller
    {
        [Route("register")]
        [HttpPost]
        public WebResult<UserDTO> register(UserDTO user)
        {
            return BL.Users.Register(user);
        }
    }
}