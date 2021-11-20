using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Inicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ArrayList lista = new ArrayList();
        string[] Archivos = System.IO.Directory.GetFiles(Server.MapPath("~\\Imagenes\\productos\\"),"*.*");

        foreach(string archivos in Archivos)
        {
            lista.Add("\\Imagenes\\productos\\" + System.IO.Path.GetFileName(archivos));
        }
        Repeater1.DataSource = lista;
        Repeater1.DataBind();
    }
}