<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>기업회원 로그인</title>

<link rel="stylesheet" href="resources/css/loginK.css">
<link rel="stylesheet" href="resources/css/loginK2.css">
<link rel="stylesheet" href="resources/css/loginK3.css">
</head>

<body>
	<div id="root">
		<div class="css-1h7ray2">

			<div class="css-t5ene7">
				<main class="css-15currb">
				<section class="css-43lg20">
					<div class="css-mv1azl"
						style="background-image: url(&quot;/static/media/img-primary-color-logo.d41babf2.svg&quot;); width: 8rem; height: 2.133rem;">
					</div>
					<p class="css-73r12t">
						IT 전문<br>인재 채용 플랫폼
					</p>
					<p class="css-z3py15">채용 수수료 0원 😉</p>
					<p class="css-ta7e0e">IT 채용의 시작, 랠릿</p>
					<picture class="css-1jnome3">
					<source srcset="resources//imgs/img-login.fe8c5d60.webp" type="image/webp">
					<img src="resources/imgs/img-login.fe8c5d60.webp" alt=""> </picture>
				</section>
				<section class="css-si2ple">
					<div class="css-3s4yqf">
						<h1 class="css-1ll6982">로그인</h1>


						<form name="form--login">
							<div class="css-11jvxo8">
								<label> <span class="css-817y00"><span>아이디(이메일)</span></span>
									<div class="css-tjh85l">
										<input name="email" type="email"
											placeholder="example@email.com" spellcheck="false"
											data-testid="input" class="css-10xzrfw" value="">
									</div>
								</label>
							</div>
							<div class="css-7ps6lw">
								<label><span class="css-817y00"><span>비밀번호</span></span>
									<div class="  css-tjh85l">
										<input name="password" type="password"
											placeholder="•••••••••••" spellcheck="false"
											data-testid="input" class="css-10xzrfw" value="">
										<button type="button" class="css-1422vj0"></button>
									</div> </label><br>
							</div>
							<button class="css-2l60pe" type="submit">로그인</button>
						</form>



						<div class="css-1fbgxqu">
							<a href="/reset-password/request">비밀번호 재설정</a>
							<div class="css-hihzyb"></div>
							<a href="/signup">기업 회원가입</a>
						</div>
					</div>
				</section>
				</main>
				<footer id="footer" class="css-lxam6v">
					<p>
						©Rallit.All rights reserved. |<a
							href="https://i.ytimg.com/vi/5rCcqk2QxrM/maxresdefault.jpg"
							target="_blank" rel="noreferrer" class="css-1lfqtkf">이용약관</a>|<a
							href="https://i.ytimg.com/vi/5rCcqk2QxrM/maxresdefault.jpg"
							target="_blank" rel="noreferrer" class="css-1lfqtkf">개인정보처리방침</a>|<a
							href="https://i.ytimg.com/vi/5rCcqk2QxrM/maxresdefault.jpg"
							target="_blank" rel="noreferrer" class="css-1lfqtkf">공지사항</a>
					</p>
				</footer>
			</div>

		</div>
	</div>

</body>

</html>