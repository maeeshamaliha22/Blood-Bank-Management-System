using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data;

namespace Blood_bank
{
    public partial class Search_Blood_Donor : System.Web.UI.Page
    {       
        Register register = new Register();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //calling getData from register.aspx file to bind the District Names in the form

                ddlSelectDistrict.DataSource = register.GetData("SPGetDistrict_Table", null);
                ddlSelectDistrict.DataTextField = "DistrictName";
                ddlSelectDistrict.DataValueField = "DistrictID";
                ddlSelectDistrict.DataBind();

                ListItem liSelectDistrict = new ListItem("Select District", "-1");
                ddlSelectDistrict.Items.Insert(0, liSelectDistrict);

                ListItem liSelectCity = new ListItem("Select City", "-1");
                ddlSelectCity.Items.Insert(0, liSelectCity);

                ListItem liSelectBloodType = new ListItem("Select Blood Type", "-1");
                ddlSelectBloodType.Items.Insert(0, liSelectBloodType);

                ddlSelectCity.Enabled = false;
                ddlSelectBloodType.Enabled = false;
            }
        }

        protected void ddlSelectDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            //enabling city after getting district data
            if (ddlSelectDistrict.SelectedIndex != 0)
            {
                ddlSelectCity.Enabled = true;
                SqlParameter sqlParameterCity = new SqlParameter("@DistrictID", ddlSelectDistrict.SelectedValue);
                DataSet ds = register.GetData("SPGetCity_TableByDistrictID", sqlParameterCity);
                ddlSelectCity.DataSource = ds;
                ddlSelectCity.DataTextField = "CityName";
                ddlSelectCity.DataValueField = "CityID";
                ddlSelectCity.DataBind();

                ListItem liSelectCity = new ListItem("Select City", "-1");
                ddlSelectCity.Items.Insert(0, liSelectCity);
            }
            else
            {
                ddlSelectCity.Enabled = false;
                ListItem liSelectCity = new ListItem("Select City", "-1");
                ddlSelectCity.Items.Insert(0, liSelectCity);

                ddlSelectBloodType.SelectedIndex = 0;
                ddlSelectBloodType.Enabled = false;
            }
        }

        protected void ddlSelectCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlSelectCity.SelectedIndex != 0)
            {
                //enabling blood type after getting city data
                ddlSelectBloodType.Enabled = true;
                DataSet ds = register.GetData("SPGetBlood_Type_Table", null);
                ddlSelectBloodType.DataSource = ds;
                ddlSelectBloodType.DataTextField = "BloodType";
                ddlSelectBloodType.DataValueField = "BloodID";
                ddlSelectBloodType.DataBind();

                ListItem liSelectBloodType = new ListItem("Select Blood Type", "-1");
                ddlSelectBloodType.Items.Insert(0, liSelectBloodType);
            }
            else
            {
                ddlSelectBloodType.Enabled = false;
                ListItem liSelectBloodType = new ListItem("Select Blood Type", "-1");
                ddlSelectBloodType.Items.Insert(0, liSelectBloodType);
            }
        }
    }
}