using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace domaci
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage == null)
                lblPoruka.Text = "Nema podataka sa prethodne strane!";
            else
                lblPoruka.Text = PreviousPage.Ime + " (" + PreviousPage.Email + "), rodjen/a " + PreviousPage.Godine + " godine, ucenik " + PreviousPage.Razred + " razreda, uspesno je popunio obrazac za prijavu.";
        }
    }
}