<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Exemplo JSP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>
  <body>
    <div class="col-md-12">
        <div class="modal-dialog" style="margin-bottom:0">
            <div class="modal-content">
                <div class="panel-heading">
                    <h3 class="panel-title">De menor ou De maior?</h3>
                </div>
                <div class="panel-body">
                <form name="formulario">
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" placeholder="Idade" name="idade" type="text" autofocus="">
                        </div>
                        <button class="btn btn-sm btn-success">Calcular</button>
                    </fieldset>
                </form>
            </div>
        </div>
<!-- Métdo no arquivo JSP -->
<%!boolean maior(int idade) {
  return idade >= 18;
}%>

<!-- Scriptlet. Código Java na página JSP. -->
<%
String idadeStr = request.getParameter("idade");
int idade = Integer.parseInt(idadeStr);
String mensagem = "";
String tipoMensagem = "";
if (maior(idade)) {
    mensagem = "De Maior! :)";
    tipoMensagem = "success";
} else {
    mensagem = "De Menor! :(";
    tipoMensagem = "warning";
}
%>
      <!-- Utilização de vaviáveis em expressões JSP. -->
      <div class="alert alert-<%=tipoMensagem%>" role="alert" style="margin-top:45px"><%=mensagem%></div>
    </div>
  </body>
</html>