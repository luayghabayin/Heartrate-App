using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A1LuayGhabayin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void calbtn_Click(object sender, EventArgs e)
        {
            HeartRates obj = new HeartRates(firsttxt.Text, lasttxt.Text, int.Parse(yearofbirthtxt.Text), genderrbl.SelectedValue.ToLower());

            String temp = obj.calculatingHeartrates(obj.Max);

            int yearofBith = Convert.ToInt32(yearofbirthtxt.Text.ToString());
            firstlbl.Text =  firsttxt.Text;
            lastlbl.Text = lasttxt.Text;
            yearofbirthlbl.Text = yearofbirthtxt.Text;
            ageyearslbl.Text =  obj.Age.ToString();
            maxheartlbl.Text = obj.Max.ToString() + " bpm";
            targetheartlbl.Text = obj.calculatingHeartrates(obj.Max);
            }


        protected void resetbtn_Click(object sender, EventArgs e)
        {
            firsttxt.Text = String.Empty;
            lasttxt.Text = "";
            yearofbirthtxt.Text = "";
            genderrbl.ClearSelection();
            firstlbl.Text = "";
            lastlbl.Text = "";
            yearofbirthlbl.Text = "";
            ageyearslbl.Text = "";
            maxheartlbl.Text = "";
            targetheartlbl.Text = "";
            RequiredFieldValidator1.Text = "";
            RequiredFieldValidator2.Text = "";
            RequiredFieldValidator3.Text = "";
            RequiredFieldValidator4.Text = "";
        }
    }
}