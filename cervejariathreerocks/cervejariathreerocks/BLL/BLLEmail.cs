using cervejariathreerocks.Models;
using System;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace cervejariathreerocks.BLL
{
    public class BLLEmail
    {


        public bool EnviarEmail(InfoContato info)
        {

            try
            {

                string CorpoEmail = PopulaCorpoEmail(info);
                MailMessage mailMessage = new MailMessage();
                //Endereço que irá aparecer no e-mail do usuário
                mailMessage.From = new MailAddress("clube@threerocks.com.br", "Clube - Three Rocks");
                //destinatarios do e-mail, para incluir mais de um basta separar por ponto e virgula 
                mailMessage.To.Add("clube@threerocks.com.br");
                mailMessage.CC.Add("clube@cervejariathreerocks.com.br");
                mailMessage.Bcc.Add("orodrigoaraujo@gmail.com");
                mailMessage.Subject = "Clube - Three Rocks";
                mailMessage.IsBodyHtml = true;
                //conteudo do corpo do e-mail
                mailMessage.Body = CorpoEmail.ToString();
                mailMessage.Priority = MailPriority.High;
                //smtp do e-mail que irá enviar
                SmtpClient smtpClient = new SmtpClient("smtp.threerocks.com.br");
                smtpClient.EnableSsl = false;
                //credenciais da conta que utilizará para enviar o e-mail
                smtpClient.Credentials = new NetworkCredential("clube@threerocks.com.br", "Threerocks@2000");
                smtpClient.Port = 587;
                smtpClient.Send(mailMessage);

                return true;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string PopulaCorpoEmail(InfoContato info)
        {
            StringBuilder texto = new StringBuilder();

            texto.Append("Clube - Three Rocks");
            texto.Append("<p>Nome: " + info.nome + "</p>");
            texto.Append("<p>Email: " + info.email + "</p>");
            texto.Append("<p>Estado / Cidade: " + info.estadoCidade + "</p>");
            texto.Append("<p>Estilo: " + info.estiloThreeRocks + "</p>");
            texto.Append("<p>Qualidade: " + info.qualidade + "</p>");
            texto.Append("<p>Mensagem: " + info.mensagem + "</p><br/>");

            texto.Append("<center><h3>Cervejaria Three Rocks</h3></center>");

            return texto.ToString();
        }

    }
}