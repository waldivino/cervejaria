<%@ Page Title="" Language="C#" MasterPageFile="~/views/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="cervejariathreerocks.views.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- About Section -->
    <section id="nossoClube" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Nosso Clube</h2>
                <p style="">
                    A Cervejaria Three Rocks vai aos mais distantes cantos da terra em busca de inspiração para produzir ou reproduzir as melhores cervejas de estilo do mundo. Ao receber uma de nossas garrafas teste, o Clube Cerveja Amiga vai ouvir a sua opinião sobre estes produtos e colocar você em contato direto com o grupo de aperfeiçoamento destas delicadas e complexas criações. O prazer é todo nosso.
                </p>
            </div>
        </div>
    </section>

    <!-- Download Section -->
    <section id="EstilosThreeRocks" class="content-section text-center">
        <div class="download-section">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Em breve ...</h2>

                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="opniao" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="form-horizontal">


                    <img src="img/imagem.png" />
                    <img src="img/cerveja.png" />

                    <!-- Form Name -->
                    <h2 style="color: #FFF;">Sua Opinião</h2>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="nome">Nome:</label>
                        <div class="col-md-4">
                            <input id="nome" name="nome" type="text" placeholder="" class="form-control input-md" required="">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="email">Email:</label>
                        <div class="col-md-4">
                            <input id="email" name="email" type="text" placeholder="" class="form-control input-md" required="">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="cidadeEstado">Cidade / Estado:</label>
                        <div class="col-md-4">
                            <input id="cidadeEstado" name="cidadeEstado" type="text" placeholder="" class="form-control input-md" required="">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="estilo">Estilo Three Rocks (escrito na etiqueta):</label>
                        <div class="col-md-4">
                            <input id="estilo" name="estilo" type="text" placeholder="" class="form-control input-md" required="">
                        </div>
                    </div>

                    <!-- Textarea -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="comentario">Maiores Comentários:</label>
                        <div class="col-md-4">
                            <textarea class="form-control" id="comentario" name="comentario"></textarea>
                        </div>
                    </div>

                    <!-- Multiple Radios (inline) -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="qualidade">Qualidade Geral da Cerveja:</label>
                        <div class="col-md-4">
                            <label class="radio-inline" for="qualidade-0">
                                <input type="radio" name="qualidade" id="qualidade-0" value="1" checked="checked">
                                1
                            </label>
                            <label class="radio-inline" for="qualidade-1">
                                <input type="radio" name="qualidade" id="qualidade-1" value="2">
                                2
                            </label>
                            <label class="radio-inline" for="qualidade-2">
                                <input type="radio" name="qualidade" id="qualidade-2" value="3">
                                3
                            </label>
                            <label class="radio-inline" for="qualidade-3">
                                <input type="radio" name="qualidade" id="qualidade-3" value="4">
                                4
                            </label>
                        </div>
                    </div>

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="enviar"></label>
                        <div class="col-md-4">
                            <button id="enviar" name="enviar" class="btn btn-primary">enviar</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>

</asp:Content>
