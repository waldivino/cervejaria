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
                <img src="img/cerveja.png" />
            </div>
        </div>
    </section>

    <!-- Download Section -->
    <section id="EstilosThreeRocks" class="content-section text-center">
        <div class="download-section">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Estilos Three Rocks</h2>
                    <ul class="AccordionWidget rounded-corners clearfix" id="accordionu726" role="tablist">
                        <!-- vertical box -->
                        <li class="AccordionPanel borderbox clearfix colelem" id="u735">
                            <!-- vertical box -->
                            <div class="AccordionPanelTab borderbox clearfix colelem" id="u736-5" role="tab" tabindex="-1" aria-selected="false">
                                <!-- content -->
                                <div id="u736-4">
                                    <p><span id="u736">SESSION IPA</span> - El Capitan</p>
                                </div>
                            </div>
                            <div class="AccordionPanelContent colelem" role="tabpanel" aria-labelledby="u736-5" style="width: 100%; height: 0px; position: relative; left: 0px; overflow: hidden;">
                                <div class="AccordionPanelContentClip">
                                    <div class="borderbox clearfix" id="u737">
                                        <!-- group -->
                                        <div class="clearfix grpelem" id="u738-4">
                                            <!-- content -->
                                            <p>Na Califórnia encontramos as referências para a nossa primeira Session IPA, que batizamos de El Capitan, em homenagem à exuberante formação rochosa na parte norte do Vale de Yosemite. El Capitan é uma cerveja leve, mas elaborada com muita personalidade, inspirada na escola americana para trazer - através da combinação de três lúpulos - uma explosão de aromas cítricos e de quatro maltes que vão surpreender você com seu alto índice de drinkability! Harmonização: a Three Rocks El Capitan é a companhia perfeita para churrascos, frutos do mar e petiscos.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="AccordionPanel borderbox clearfix colelem" id="u868">
                            <!-- vertical box -->
                            <div class="AccordionPanelTab borderbox clearfix colelem" id="u869-5" role="tab" tabindex="-1" aria-selected="false">
                                <!-- content -->
                                <div id="u869-4">
                                    <p><span id="u869">LAGER BREWING</span> - Castle House</p>
                                </div>
                            </div>
                            <div class="AccordionPanelContent colelem" role="tabpanel" aria-labelledby="u869-5" style="width: 100%; height: 0px; position: relative; left: 0px; overflow: hidden;">
                                <div class="AccordionPanelContentClip">
                                    <div class="borderbox clearfix" id="u870">
                                        <!-- group -->
                                        <div class="clearfix grpelem" id="u880-4">
                                            <!-- content -->
                                            <p>Em breve você vai encontrar aqui uma breve descrição de nossa Witbier..</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="AccordionPanel borderbox clearfix colelem" id="u731">
                            <!-- vertical box -->
                            <div class="AccordionPanelTab borderbox clearfix colelem AccordionPanelTabOpen" id="u734-5" role="tab" tabindex="0" aria-selected="true">
                                <!-- content -->
                                <div id="u734-4">
                                    <p><span id="u734">WITBIER</span> - Lange Anna</p>
                                </div>
                            </div>
                            <div class="AccordionPanelContent colelem AccordionPanelContentActive" role="tabpanel" aria-labelledby="u734-5" style="width: 100%; height: auto; position: relative; left: 0px;">
                                <div class="AccordionPanelContentClip">
                                    <div class="borderbox clearfix" id="u732">
                                        <!-- group -->
                                        <div class="clearfix grpelem" id="u733-4">
                                            <!-- content -->
                                            <p>Em breve você vai encontrar aqui uma breve descrição de nossa Witbier.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="opniao" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Sua Opinião</h2>
                <form class="form-grp clearfix" id="widgetu1908" method="post" enctype="multipart/form-data" action="scripts/form-u1908.php">
                    <!-- none box -->
                    <div class="fld-grp clearfix grpelem" id="widgetu1920" data-required="true">
                        <!-- none box -->
                        <label class="fld-label actAsDiv clearfix grpelem" id="u1922-4" for="widgetu1920_input">
                            <!-- content -->
                            <span class="actAsPara">Nome:</span></label>
                        <span class="fld-input NoWrap actAsDiv rounded-corners clearfix grpelem" id="u1923-3">
                            <!-- content -->
                            <input class="wrapped-input" type="text" spellcheck="false" id="widgetu1920_input" name="custom_U1920" tabindex="1" /></span>
                    </div>
                    <div class="fld-grp clearfix grpelem" id="widgetu1912" data-required="true" data-type="email">
                        <!-- none box -->
                        <label class="fld-label actAsDiv clearfix grpelem" id="u1914-4" for="widgetu1912_input">
                            <!-- content -->
                            <span class="actAsPara">Email:</span></label>
                        <span class="fld-input NoWrap actAsDiv rounded-corners clearfix grpelem" id="u1915-3">
                            <!-- content -->
                            <input class="wrapped-input" type="email" spellcheck="false" id="widgetu1912_input" name="Email" tabindex="3" /></span>
                    </div>
                    <div class="clearfix grpelem" id="u1909-4">
                        <!-- content -->
                        <p>Submitting Form...</p>
                    </div>
                    <div class="clearfix grpelem" id="u1910-4">
                        <!-- content -->
                        <p>The server encountered an error.</p>
                    </div>
                    <div class="clearfix grpelem" id="u1911-4">
                        <!-- content -->
                        <p>Form received.</p>
                    </div>
                    <input class="submit-btn NoWrap grpelem" id="u1924-17" type="submit" value="" tabindex="7" /><!-- state-based BG images -->
                    <div class="fld-grp clearfix grpelem" id="widgetu1916" data-required="false">
                        <!-- none box -->
                        <label class="fld-label actAsDiv clearfix grpelem" id="u1919-4" for="widgetu1916_input">
                            <!-- content -->
                            <span class="actAsPara">Maiores Comentários:</span></label>
                        <span class="fld-textarea actAsDiv rounded-corners clearfix grpelem" id="u1917-3">
                            <!-- content -->
                            <textarea class="wrapped-input" id="widgetu1916_input" name="custom_U1916" tabindex="4"></textarea></span>
                    </div>
                    <div class="fld-grp clearfix grpelem" id="widgetu1961" data-required="true">
                        <!-- none box -->
                        <label class="fld-label actAsDiv clearfix grpelem" id="u1964-4" for="widgetu1961_input">
                            <!-- content -->
                            <span class="actAsPara">Cidade / Estado:</span></label>
                        <span class="fld-input NoWrap actAsDiv rounded-corners clearfix grpelem" id="u1963-3">
                            <!-- content -->
                            <input class="wrapped-input" type="text" id="widgetu1961_input" name="custom_U1961" tabindex="5" /></span>
                    </div>
                    <div class="fld-grp clearfix grpelem" id="widgetu1973" data-required="true">
                        <!-- none box -->
                        <label class="fld-label actAsDiv clearfix grpelem" id="u1974-4" for="widgetu1973_input">
                            <!-- content -->
                            <span class="actAsPara">Estilo Three Rocks (escrito na etiqueta):</span></label>
                        <span class="fld-input NoWrap actAsDiv rounded-corners clearfix grpelem" id="u1976-3">
                            <!-- content -->
                            <input class="wrapped-input" type="text" id="widgetu1973_input" name="custom_U1973" tabindex="6" /></span>
                    </div>
                    <div class="fld-grp clearfix grpelem" id="widgetu1985" data-required="true" data-type="radiogroup">
                        <!-- none box -->
                        <label class="fld-label actAsDiv clearfix grpelem" id="u1987-4">
                            <!-- content -->
                            <span class="actAsPara">Qualidade Geral da Cerveja:</span></label>
                        <div class="fld-grp clearfix grpelem" id="widgetu1996" data-required="false" data-type="radio">
                            <!-- none box -->
                            <label class="fld-label actAsDiv clearfix grpelem" id="u1997-4" for="widgetu1996_input">
                                <!-- content -->
                                <span class="actAsPara">1</span></label>
                            <div class="fld-radiobutton museBGSize grpelem" id="u2002">
                                <!-- simple frame -->
                                <input class="wrapped-input" type="radio" value="1" spellcheck="false" id="widgetu1996_input" name="custom_U1985" tabindex="2" />
                                <label for="widgetu1996_input"></label>
                            </div>
                        </div>
                        <div class="fld-grp clearfix grpelem" id="widgetu2049" data-required="false" data-type="radio">
                            <!-- none box -->
                            <label class="fld-label actAsDiv clearfix grpelem" id="u2051-4" for="widgetu2049_input">
                                <!-- content -->
                                <span class="actAsPara">2</span></label>
                            <div class="fld-radiobutton museBGSize grpelem" id="u2050">
                                <!-- simple frame -->
                                <input class="wrapped-input" type="radio" value="2" spellcheck="false" id="widgetu2049_input" name="custom_U1985" tabindex="2" />
                                <label for="widgetu2049_input"></label>
                            </div>
                        </div>
                        <div class="fld-grp clearfix grpelem" id="widgetu2059" data-required="false" data-type="radio">
                            <!-- none box -->
                            <label class="fld-label actAsDiv clearfix grpelem" id="u2060-4" for="widgetu2059_input">
                                <!-- content -->
                                <span class="actAsPara">3</span></label>
                            <div class="fld-radiobutton museBGSize grpelem" id="u2061">
                                <!-- simple frame -->
                                <input class="wrapped-input" type="radio" value="3" spellcheck="false" id="widgetu2059_input" name="custom_U1985" tabindex="2" />
                                <label for="widgetu2059_input"></label>
                            </div>
                        </div>
                        <div class="fld-grp clearfix grpelem" id="widgetu2068" data-required="false" data-type="radio">
                            <!-- none box -->
                            <label class="fld-label actAsDiv clearfix grpelem" id="u2069-4" for="widgetu2068_input">
                                <!-- content -->
                                <span class="actAsPara">4</span></label>
                            <div class="fld-radiobutton museBGSize grpelem" id="u2070">
                                <!-- simple frame -->
                                <input class="wrapped-input" type="radio" value="4" spellcheck="false" id="widgetu2068_input" name="custom_U1985" tabindex="2" />
                                <label for="widgetu2068_input"></label>
                            </div>
                        </div>
                        <div class="fld-grp clearfix grpelem" id="widgetu2077" data-required="false" data-type="radio">
                            <!-- none box -->
                            <label class="fld-label actAsDiv clearfix grpelem" id="u2078-4" for="widgetu2077_input">
                                <!-- content -->
                                <span class="actAsPara">5</span></label>
                            <div class="fld-radiobutton museBGSize grpelem" id="u2079">
                                <!-- simple frame -->
                                <input class="wrapped-input" type="radio" value="5" spellcheck="false" id="widgetu2077_input" name="custom_U1985" tabindex="2" />
                                <label for="widgetu2077_input"></label>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>

</asp:Content>
