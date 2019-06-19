using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_bank
{
    public partial class Register : System.Web.UI.Page
    {
        string ImageName, ImageExtension, ImagePath;
        float ImageSize;

        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //calling getData to bind the blood type data in the form
                ddlBloodType.DataSource = GetData("SPGetBlood_Type_Table", null);
                ddlBloodType.DataTextField = "BloodType";
                ddlBloodType.DataValueField = "BloodID";
                ddlBloodType.DataBind();

                ListItem liBloodType = new ListItem("Select Blood Type", "-1");
                ddlDistrict.Items.Insert(0, liBloodType);

                //calling GetData to bind the district and city in the form
                ddlDistrict.DataSource = GetData("SPGetDistrict_Table", null);
                ddlDistrict.DataTextField = "DistrictName";
                ddlDistrict.DataValueField = "DistrictID";
                ddlDistrict.DataBind();

                ListItem liDistrict = new ListItem("Select District", "-1");
                ddlDistrict.Items.Insert(0, liDistrict);

                ListItem liCity = new ListItem("Select City", "-1");
                ddlCity.Items.Insert(0, liCity);

                ddlCity.Enabled = false;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (UploadImage() == true)
            {
                


                SqlCommand cmd = new SqlCommand("SPInsertRegistrationValue", sqlConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("FullName", txtFullName.Text);
                cmd.Parameters.AddWithValue("Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("MobileNo", txtMobileNo.Text);
                cmd.Parameters.AddWithValue("Age", txtAge.Text);
                cmd.Parameters.AddWithValue("Gender", gender);
                cmd.Parameters.AddWithValue("BloodGroup", ddlBloodType.Text);
                cmd.Parameters.AddWithValue("UserType", ddlUserType.Text);
                cmd.Parameters.AddWithValue("Height", txtHeight.Text);
                cmd.Parameters.AddWithValue("Weight", txtWeight.Text);
                cmd.Parameters.AddWithValue("District", ddlDistrict.Text);
                cmd.Parameters.AddWithValue("City", ddlCity.Text);
                cmd.Parameters.AddWithValue("Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("ImageName", ImageName);
                cmd.Parameters.AddWithValue("ImageSize", ImageSize);
                cmd.Parameters.AddWithValue("ImagePath", ImagePath);


                sqlConnection.Open();
                cmd.ExecuteNonQuery();
                sqlConnection.Close();

                lblRegister.Text = "Registration Has Been Saved Successfully";
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            string gender = "";

            if (RbtnMale.Checked)
            {
                gender = RbtnMale.Text;
            }
            else if (RbtnFemale.Checked)
            {
                gender = RbtnFemale.Text;
            }
        }

        //getting data from existing table into web form
        public DataSet GetData(string spname, SqlParameter sqlParameter)
        {
            SqlDataAdapter da = new SqlDataAdapter(spname, sqlConnection);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (sqlParameter != null)
            {
                da.SelectCommand.Parameters.Add(sqlParameter);
            }
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;

        }

        protected void ddlDistrict_SelectedIndexChanged1(object sender, EventArgs e)
        {
            //enabling city after getting district data
            if (ddlDistrict.SelectedIndex != 0)
            {
                ddlCity.Enabled = true;
                SqlParameter sqlParameter = new SqlParameter("@DistrictID", ddlDistrict.SelectedValue);
                DataSet ds = GetData("SPGetCity_TableByDistrictID", sqlParameter);
                ddlCity.DataSource = ds;
                ddlCity.DataTextField = "CityName";
                ddlCity.DataValueField = "CityID";
                ddlCity.DataBind();

                ListItem liCity = new ListItem("Select City", "-1");
                ddlCity.Items.Insert(0, liCity);
            }
            else
            {
                ddlCity.Enabled = false;
                ListItem liCity = new ListItem("Select City", "-1");
                ddlCity.Items.Insert(0, liCity);
            }
        }


        //uploading image 
        private Boolean UploadImage()
        {
            Boolean imageSaved = false;
            if (FileUploadImage.HasFile == true)
            {
                HttpPostedFile postedFile = FileUploadImage.PostedFile;
                ImageName = Path.GetFileName(postedFile.FileName);
                ImageExtension = Path.GetExtension(ImageName);
                ImageSize = postedFile.ContentLength;
                ImagePath = "~/Uploaded/" + ImageName;

                if (ImageExtension.ToLower() == ".jpg" || ImageExtension.ToLower() == ".bmp" ||
                        ImageExtension.ToLower() == ".png" || ImageExtension.ToLower() == ".jpeg")
                {
                    if (ImageSize < 102400)
                    {
                        System.Drawing.Image image = System.Drawing.Image.FromStream(postedFile.InputStream);
                        int height = image.Height;
                        int width = image.Width;

                        if (height <= 600 && width <= 600)
                        {
                            FileUploadImage.SaveAs(Server.MapPath("~/Uploaded/") + ImageName + ".jpg");
                            ImageRegistration.ImageUrl = "~/Uploaded/" + ImageName + ".jpg";
                            //string ImageData = "Uploaded/" + ImageName + ".jpg";
                            imageSaved = true;
                        }
                        else
                        {
                            ImageMsgID.Text = "Kindly Upload Image in Proper Dimensions 200 x 200";
                        }
                    }
                    else
                    {
                        ImageMsgID.Text = "File Size exceeds 100 KB - Please Upload File Size Maximum 100 KB";
                    }
                }
                else
                {
                    ImageMsgID.Text = "Only JPEG/JPG/PNG/BMP Image File Acceptable - Please Upload Image File Again";
                }
            }
            else
            {
                ImageMsgID.Text = "You have not selected any file - Browse and Select File First";
            }

            return imageSaved;
        }

    }
}