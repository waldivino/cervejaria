using cervejariathreerocks.BLL;
using cervejariathreerocks.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cervejariathreerocks.views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [WebMethod]
        public static string contato(string nome, string email, string estadoCidade, string estiloThreeRocks,string qualidade,string mensagem)
        {
            string json = null;
            InfoResult results = null;

            try
            {
                if (Equals(results, null))
                {

                    BLLEmail bll = new BLLEmail();
                    InfoContato info = new InfoContato();
                    info.nome = nome;
                    info.email = email;
                    info.estadoCidade = estadoCidade;
                    info.estadoCidade = estadoCidade;
                    info.qualidade = qualidade;
                    info.mensagem = mensagem;

                    bll.EnviarEmail(info);

                    results = new InfoResult();
                    results.Info = "ResultOk";
                    results.Data = "";
                    results.Message = "Contato enviado com sucesso.";

                }

                json = JsonConvert.SerializeObject(results);

                return json;

            }
            catch (Exception ex)
            {
                results = new InfoResult();
                results.Info = "Error";
                results.Data = "";
                results.Message = "Erro ao enviar o contato: " + ex.Message;

                return JsonConvert.SerializeObject(results);
            }
        }

    }
}