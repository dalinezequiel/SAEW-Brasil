<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAE - Sistematização de Assistência de Enfermagem</title>
<link rel="stylesheet" href="css/indexa.css">
</head>
<body>
    <div class="parent">
         <form action="login" method="POST">
            <div class="child-login">
              <div class="login-logo">
                 <img alt="" src="img/sae_logo.jpeg">
              </div>
              <div class="login-usuario">
                  <div class="login-input">
                     <input type="text" name="usuario" placeholder="Usuário">
                  </div>
              </div>
              <div class="login-senha">
                  <div class="login-input">
                     <input type="password" name="senha" placeholder="Senha">
                  </div>
              </div>
              <div class="login-link">
                  <div>
                     <a href="">Esqueceu senha?</a>
                  </div>
              </div>
              <div class="login-submit">
                  <div>
                     <input type="submit" id="login" value="LOGAR">
                  </div>
              </div>
              <div class="login-copy">
                  <div>
                     <p>&copy;2022. Todos direitos reservados | <a href="">Suporte técnico</a></p>
                  </div>
              </div>
         </div>
      </form>
    </div>
</body>
</html>