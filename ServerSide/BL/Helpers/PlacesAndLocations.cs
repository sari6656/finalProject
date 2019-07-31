using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL.Helpers
{
    public class PlacesAndLocations
    {
        static ProjectEntities db = new ProjectEntities();
        //הגרלת מיקום משתמש
        public static ShopDetailsForUsers GetRandomLocation()
        {
            int count = db.Shops.Count();
            Random random = new Random();
            int r = random.Next() % count;
            Shop shop = db.Shops.ToList()[r];
            return new ShopDetailsForUsers()
            {
                AddressString = shop.addressString,
                Latitude = shop.latitude,
                Longitude = shop.longitude
            };
        }
    }
}
