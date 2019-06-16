using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_bank
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setImageUrl();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            setImageUrl();
        }
        private void setImageUrl()
        {
            Random random = new Random();
            int i = random.Next(1, 4);
            ImageSlide.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
            ImageSlide.Height = 480;
            ImageSlide.Width = 960;
        }
    }
}