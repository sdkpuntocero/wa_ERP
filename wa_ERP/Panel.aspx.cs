using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wa_ERP
{
    public partial class Panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    try
                    {
                        //UsuarioFiltrado();
                    }
                    catch
                    {
                    }
                }
            }
            catch
            {
                //Response.Redirect("acceso.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            cardUsuario.Visible = true;
            upUsuario.Update();

            


        }

        private void SControlUsurio()
        {
            sBusquedaUsuario.Items.Clear();

            using (Database1Entities mConfiguracion = new Database1Entities())
            {
                var dConfiguracion = (from c in mConfiguracion.catBusquedaUsuario
                                      select c).ToList();

                sBusquedaUsuario.DataSource = dConfiguracion;
                sBusquedaUsuario.DataTextField = "BusquedaUsuario";
                sBusquedaUsuario.DataValueField = "BusquedaUsuarioID";
                sBusquedaUsuario.DataBind();

                sBusquedaUsuario.Items.Insert(0, new ListItem("*Buscar Por:", string.Empty));
            }
        }

        protected void lkbUsuarioAgregar_Click(object sender, EventArgs e)
        {
            sComposUsuario();
            limpiaRegistroUsuario();
            gvUsuarios.Visible = false;
            divDatosUsuario.Visible = true;
            divBuscaUsuario.Visible = false;
            upUsuario.Update();
        }

        protected void lkbUsuarioEdita_Click(object sender, EventArgs e)
        {
            divDatosUsuario.Visible = false;
            divBuscaUsuario.Visible = true;
            SControlUsurio();
            //FiltroUP = "pnl_usr";

        }
        private void limpiaRegistroUsuario()
        {
            sComposUsuario();
            iNombresUsuario.Value = string.Empty;
            iApaternoUsuario.Value = string.Empty;
            iAmaternoUsuario.Value = string.Empty;
            iNacimientoUsuario.Value = string.Empty;
            iUsuario.Value = string.Empty;
            iClave.Value = string.Empty;
            iEmailCorporativoUsuario.Value = string.Empty;
            iEmailPersonalUsuario.Value = string.Empty;
            iEmailCorporativoUsuario.Value = string.Empty;
        }
        private void sComposUsuario()
        {
            sAreaUsuario.Items.Clear();
            sPerfilUsuario.Items.Clear();
            sGeneroUsuario.Items.Clear();

            using (Database1Entities mSelect = new Database1Entities())
            {
                var dAreas = (from c in mSelect.catAreas
                                      select c).ToList();

                sAreaUsuario.DataSource = dAreas;
                sAreaUsuario.DataTextField = "Area";
                sAreaUsuario.DataValueField = "AreaID";
                sAreaUsuario.DataBind();

                sAreaUsuario.Items.Insert(0, new ListItem("Área", string.Empty));

                //var dPerfiles = (from c in mSelect.catPerfiles
                //                 select c).ToList();

                //sPerfilUsuario.DataSource = dPerfiles;
                //sPerfilUsuario.DataTextField = "Perfil";
                //sPerfilUsuario.DataValueField = "PerfilID";
                //sPerfilUsuario.DataBind();

                //sPerfilUsuario.Items.Insert(0, new ListItem("Perfil", string.Empty));

                var dGenero = (from c in mSelect.catGeneros
                               select c).ToList();

                sGeneroUsuario.DataSource = dGenero;
                sGeneroUsuario.DataTextField = "Genero";
                sGeneroUsuario.DataValueField = "GeneroID";
                sGeneroUsuario.DataBind();

                sGeneroUsuario.Items.Insert(0, new ListItem("Género", string.Empty));
            }

            sPerfilUsuario.Items.Insert(0, new ListItem("Perfil", string.Empty));
        }
    }
}