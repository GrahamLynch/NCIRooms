﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = Context.User.Identity.Name.ToString();
    }

    protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {

    }
}