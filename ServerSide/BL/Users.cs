using Entities;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BL.Casting;
using BL.Helpers;
using System.Web;

namespace BL
{
    public class Users
    {
        public static ProjectEntities db = new ProjectEntities();
        //הרשמה
        public static WebResult<UserDTO> Register(UserDTO user)//האובייקט מגיע עם שדות חובה שכבר נבדקו
        {
            User goodUser = UserCast.GetUser(user);
            if (db.Users.FirstOrDefault(w => w.passwordUser == goodUser.passwordUser) != null
                || db.Users.FirstOrDefault(w => w.mailUser == user.mailUser) != null)// אם יש כבר כזו סיסמה או כזה מייל
                return new WebResult<UserDTO>
                {
                    Message = "אחד מהנתונים שהוקשו קיימים במערכת",
                    Status = false,
                    Value = null
                };
            db.Users.Add(goodUser);
            db.SaveChanges();
            HttpContext.Current.Session["User"] = user;
            return new WebResult<UserDTO>
            {
                Message = "הנתונים נשמרו בהצלחה",
                Value = user,
                Status = true
            };
        }
        //כניסה אם המשתמש רוצה לשנות את הפרטים שלו, לא קשור לחיפושים
        public static WebResult<UserDTO> Login(string email, string password)
        {
            User user = db.Users.FirstOrDefault(u => u.mailUser == email && u.passwordUser == password);
            if (user == null)
                return new WebResult<UserDTO>
                {
                    Message = "אחד מהנתונים שהוקשו שגויים",
                    Status = false,
                    Value = null
                };
            HttpContext.Current.Session["User"] = user;
            return new WebResult<UserDTO>
            {
                Message = "הכניסה בוצעה בהצלחה",
                Value = UserCast.GetUserDTO(user),
                Status = true
            };
        }
        //עריכה של פרטי המשתמש ולא של החיפושים שלו
        public static WebResult<UserDTO> Update(UserDTO user)
        {
            if (user.codeUser != (HttpContext.Current.Session["User"] as User).codeUser)
                return new WebResult<UserDTO>
                {
                    Message = "שגיאת אבטחה, משתמש לא תואם",
                    Value = null,
                    Status = false
                };
            User userDB = db.Users.FirstOrDefault(u => u.mailUser == user.mailUser);
            if (user == null)
                return new WebResult<UserDTO>
                {
                    Message = "אחד מהנתונים שהוקשו שגויים",
                    Status = false,
                    Value = null
                };
            userDB.nameUser = user.nameUser;
            userDB.phoneUser = user.phoneUser;
            db.SaveChanges();
            return new WebResult<UserDTO>
            {
                Message = "העדכון בוצע בהצלחה",
                Value = user,
                Status = true
            };
        }
        //ביטול משתמש
        //האם עושים מחיקה אמיתית??????????????????????
        public static WebResult<UserDTO> Delete(int code)
        {
            User user = db.Users.Find(code);
            if (user == null)
                return new WebResult<UserDTO>
                {
                    Message = "אחד מהנתונים שהוקשו שגויים",
                    Status = false,
                    Value = null
                };
            //הרי אסור לשנות את הרשימה forEach האם השורה הבאה נכונה, כי כשעושים ????????????????
            db.Searches.Where(s => s.codeUser == code).ToList().ForEach(f => db.Searches.Remove(f));
            db.Users.Remove(user);
            db.SaveChanges();
            return new WebResult<UserDTO>
            {
                Message = "המחיקה בוצעה בהצלחה",
                Value = UserCast.GetUserDTO(user),
                Status = true
            };
        }
    }
}
