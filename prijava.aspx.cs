using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace domaci
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtImeValidator.IsValid && txtEmailValidator.IsValid
                && txtEmailExpression.IsValid && txtConfirmValidator.IsValid &&
                txtConfirmValidator.IsValid && PorediLozinkeValidator.IsValid &&
                txtAgeValidator.IsValid && GodineValidator.IsValid && radiobtnvalidator.IsValid)
                lblPoruka.Text = "Ispravno su popunjena sva polja.";
            else
                lblPoruka.Text = "Neka polja nisu ipravno popunjena!";
        }
        public string Ime
        {
            get { return txtIme.Text; }

        }
         public string Email
        {
            get { return txtEmail.Text; }
        }
        public string Godine
        {
            get { return txtAge.Text; }
        }
        public string Razred
        {
            get { return radiobtn.SelectedValue; }
        }
    }
}