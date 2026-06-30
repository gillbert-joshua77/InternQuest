using System;

namespace InternQuest
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                double cgpa = double.Parse(txtCgpa.Text);

                pnlResult.Visible = true;

                if (cgpa >= 8.5)
                {
                    lblResult.Text = "✅ Congrats " + txtName.Text + "! You are ELIGIBLE for the AI Research Internship.";
                    lblResult.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblResult.Text = "❌ Sorry " + txtName.Text + ", minimum CGPA 7.0 required. Your CGPA: " + cgpa;
                    lblResult.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }

        protected void cvResume_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            if (fuResume.HasFile)
            {
                string ext = System.IO.Path.GetExtension(fuResume.FileName).ToLower();
                args.IsValid = (ext == ".pdf");
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}