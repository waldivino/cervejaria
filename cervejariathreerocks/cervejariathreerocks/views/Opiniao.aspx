<%@ Page Title="" Language="C#" MasterPageFile="~/views/Site.Master" AutoEventWireup="true" CodeBehind="Opiniao.aspx.cs" Inherits="cervejariathreerocks.views.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript" src="../Scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui-1.10.4.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.mask.js"></script>

    <!-- Jquery Biblioteca Boostrap -->
    <script type="text/javascript" src="../Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap-dialog.js"></script>

    <!-- Style Página -->
    <link href="../Content/bootstrap-dialog.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <%--    <link href="../Content/jquery-ui-1.10.4.custom.css" rel="stylesheet" />--%>


    <script type="text/javascript">
        $(document).ready(function () {



        });


        function Contato() {
            $('#enviar').button('loading');

            var qualidade = $("input[type=radio][name='qualidade']:checked").val();
            var nome = $('#nome').val();
            var email = $('#email').val();
            var cidadeEstado = $('#cidadeEstado').val();
            var estilo = $('#estilo').val();
            var comentario = $('#comentario').val();


            if (qualidade == null) {

                BootstrapDialog.show({
                    title: 'Informação',
                    message: 'Escolha uma qualidade Geral da Cerveja.',
                    buttons: [{
                        label: 'Entendi!',
                        cssClass: 'btn-primary',
                        action: function (dialogItself) {
                            dialogItself.close();
                            $('#enviar').button('reset');
                        }
                    }]
                });
                return false;
            }

            if (nome.length < 2) {

                BootstrapDialog.show({
                    title: 'Informação',
                    message: 'O campo nome não pode ficar vazio.',
                    buttons: [{
                        label: 'Entendi!',
                        cssClass: 'btn-primary',
                        action: function (dialogItself) {
                            dialogItself.close();
                            $('#enviar').button('reset');
                        }
                    }]
                });
                return false;
            }

            if (email.length < 2) {

                BootstrapDialog.show({
                    title: 'Informação',
                    message: 'O campo email não pode ficar vazio.',
                    buttons: [{
                        label: 'Entendi!',
                        cssClass: 'btn-primary',
                        action: function (dialogItself) {
                            dialogItself.close();
                            $('#enviar').button('reset');
                        }
                    }]
                });
                return false;
            }

            if (cidadeEstado.length < 2) {

                BootstrapDialog.show({
                    title: 'Informação',
                    message: 'O campo Cidade/Estado não pode ficar vazio.',
                    buttons: [{
                        label: 'Entendi!',
                        cssClass: 'btn-primary',
                        action: function (dialogItself) {
                            dialogItself.close();
                            $('#enviar').button('reset');
                        }
                    }]
                });
                return false;
            }

            if (estilo.length < 2) {

                BootstrapDialog.show({
                    title: 'Informação',
                    message: 'O campo estilo não pode ficar vazio.',
                    buttons: [{
                        label: 'Entendi!',
                        cssClass: 'btn-primary',
                        action: function (dialogItself) {
                            dialogItself.close();
                            $('#enviar').button('reset');
                        }
                    }]
                });
                return false;
            }

            if (comentario.length < 2) {

                BootstrapDialog.show({
                    title: 'Informação',
                    message: 'O campo comentario não pode ficar vazio.',
                    buttons: [{
                        label: 'Entendi!',
                        cssClass: 'btn-primary',
                        action: function (dialogItself) {
                            dialogItself.close();
                            $('#enviar').button('reset');
                        }
                    }]
                });
                return false;
            }


            $.ajax({
                //URL -> url de Envio da informações
                url: "Opiniao.aspx/contato",

                //Type -> Qual o tipo de envio da informações
                type: "POST",

                //Content Type -> Tipo de Mensagem de conteudo
                contentType: "application/json; charset=utf-8",

                //Data Type -> Tipo da mensagem
                dataType: "json",

                //Data -> Parametros a serem enviados
                data: JSON.stringify({ "nome": nome, "email": email, "estadoCidade": cidadeEstado, "estiloThreeRocks": estilo, "qualidade": qualidade, "mensagem": comentario }),

                //Success -> Retorno com Sucesso do servidor
                success: function (data) {

                    var json = $.parseJSON(data.d);

                    if (json.Info != "Error") {

                        BootstrapDialog.show({
                            title: 'Informação',
                            message: json.Message,
                            buttons: [{
                                label: 'Entendi!',
                                cssClass: 'btn-primary',
                                action: function (dialogItself) {
                                    dialogItself.close();
                                    $('#enviar').button('reset');

                                    $("input[type=radio][name='qualidade']:checked").val("");
                                    $('#nome').val("");
                                    $('#email').val("");
                                    $('#cidadeEstado').val("");
                                    $('#estilo').val("");
                                    $('#comentario').val("");
                                }
                            }]
                        });

                        return true;

                    }

                    if (json.Info == "Error") {
                        //  var d = $.parseJSON(json.Data);
                        BootstrapDialog.show({
                            title: 'Informação',
                            message: json.Message,
                            buttons: [{
                                label: 'Entendi!',
                                cssClass: 'btn-primary',
                                action: function (dialogItself) {
                                    dialogItself.close();
                                    $('#enviar').button('reset');
                                }
                            }]
                        });

                        return false;

                    }
                },
                //Error -> Caso tenha erro no servidor apresento o erro
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    var json = $.parseJSON(XMLHttpRequest.responseText);

                    BootstrapDialog.show({
                        title: 'Erro',
                        message: json.Message,
                        type: BootstrapDialog.TYPE_DANGER,
                        buttons: [{
                            label: 'Entendi!',
                            cssClass: 'btn-danger',
                            action: function (dialogItself) {
                                dialogItself.close();
                                $('#enviar').button('reset');
                            }
                        }]
                    });
                }
            });
        }

    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Contact Section -->
    <section id="page-top" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">

                <div class="form-horizontal" style="margin-top: -55px;">


                    <img src="img/imagem.png" />
                    <img src="img/cerveja.png" />

                    <!-- Form Name -->
                    <h2 style="color: #FFF;">Sua Opinião</h2>

                    <!-- Multiple Radios (inline) -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="qualidade">Qualidade Geral da Cerveja:</label>
                        <div class="col-md-4">
                            <label class="radio-inline" for="qualidade-0">
                                <input type="radio" name="qualidade" id="qualidade-0" value="1">
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
                            <label class="radio-inline" for="qualidade-4">
                                <input type="radio" name="qualidade" id="qualidade-4" value="5">
                                5
                            </label>
                        </div>
                    </div>

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

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="enviar"></label>
                        <div class="col-md-4">
                            <button
                                type="button"
                                id="enviar"
                                class="btn btn-success btn-lg"
                                data-loading-text="Enviando contato <i class='fa fa-refresh fa-spin'></i>"
                                onclick="Contato()">
                                enviar</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>

</asp:Content>
