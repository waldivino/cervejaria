using cervejariathreerocks.BLL;
using cervejariathreerocks.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;

namespace cervejariathreerocks.BLL
{
    public class BLLEmail
    {


        public bool EnviarEmail(InfoContato info)
        {

            try
            {

                string remetenteEmail = "clube@cervejariathreerocks.com.br"; //O e-mail do remetente
                MailMessage mail = new MailMessage();
                mail.To.Add("orodrigoaraujo@gmail.com");
                mail.From = new MailAddress(remetenteEmail, "Clube - Three Rocks", System.Text.Encoding.UTF8);
                mail.Subject = "Clube Three Rocks";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = PopulaCorpoEmail(info);
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.High; //Prioridade do E-Mail

                SmtpClient client = new SmtpClient();  //Adicionando as credenciais do seu e-mail e senha:
                client.Credentials = new System.Net.NetworkCredential(remetenteEmail, "Threerocks@2000");

                client.Port = 587; // Esta porta é a utilizada pelo Gmail para envio
                client.Host = "smtp.cervejariathreerocks.com.br"; //Definindo o provedor que irá disparar o e-mail
                client.EnableSsl = true; //Gmail trabalha com Server Secured Layer

                //Envia o email
                client.Send(mail);


            }
            catch (Exception ex)
            {
                throw ex;
            }

            return true;
        }

        private string PopulaCorpoEmail(InfoContato info)
        {
            StringBuilder texto = new StringBuilder();

            texto.Append("<p>Nome: " + info.nome + "</p><br/>");
            texto.Append("<p>Email: " + info.email+"</p><br/>");
            texto.Append("<p>Estado / Cidade: " + info.estadoCidade + "</p><br/>");
            texto.Append("<p>Estilo: " + info.estiloThreeRocks + "</p><br/>");
            texto.Append("<p>Qualidade: " + info.qualidade + "</p><br/>");
            texto.Append("<p>Mensagem: " + info.mensagem + "</p><br/>");

            texto.Append("<center><h3>Cervejaria Three Rocks</h3></center>");

            return texto.ToString();
        }

    }
}