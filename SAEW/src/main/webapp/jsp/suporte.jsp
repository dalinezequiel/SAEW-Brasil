<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="../css/suporte.css">
</head>
<body>
    <div class="parent">
         <form action="" method="POST">
            <div class="child-login">
              <div class="login-logo">
                 <h2>Suporte técnico</h2>
              </div>
              <div class="login-usuario">
                  <div class="login-input">
                     <input type="text" name="nome" placeholder="Nome">
                  </div>
              </div>
              <div class="login-usuario">
                  <div class="login-input">
                     <input type="email" name="email" placeholder="Email">
                  </div>
              </div>
              <div class="login-senha">
                  <div class="login-input">
                     <input type="text" name="assunto" placeholder="Assunto">
                  </div>
              </div>
              <div class="descricao">
                  <div class="t-area">
                     <textarea name="descricao" placeholder="Descrição"></textarea>
                  </div>
              </div>
              <div class="login-submit">
                  <div>
                     <a href="../index.jsp">Voltar</a>
                     <input type="submit" value="Submeter">
                  </div>
              </div>
              <div class="login-copy">
                  <div>
                     <p>&copy;2022. Todos direitos reservados | <a href="suporte.jsp">Suporte técnico</a></p>
                  </div>
              </div>
         </div>
      </form>
    </div>
</body>
</html>