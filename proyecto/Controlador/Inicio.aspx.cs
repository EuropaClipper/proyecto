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
        List<EProducto> Archivos = new DAOProducto().obtenerProductosCatalogo();
        foreach(var archivos in Archivos)
        {
            lista.Add(archivos.Imagen_uno.Substring(1));
        }
        Repeater1.DataSource = lista;
        Repeater1.DataBind();
    }
}