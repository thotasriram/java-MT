<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment successfull</title>
<style type="text/css">
body {
	background: url(Payment.png);
	margin-top: 10%;
	background-size: 100% 700px;
	background-repeat: no-repeat;
}

h4 {
	margin-top: 1%;
	margin-left: 30%;
}

.aa {
	margin-left: 42%;
	width: 20%;
}
</style>
</head>
<body>
      <h3> 
           <center style='color : green'>payment successfully done</center>
      </h3>
      <h3>
          <center style='color : black'>the payment of ${requestscope.amount } has been done successfuly</center>
      </h3>
<h4>
<div> 
   <h3>from</h3>
   <pre>
         A/c number 		: ${param.a1} 
	     name 				: ${requestScope.name1}
	     available balance 	: ${requestScope.total1} 
   </pre>
</div>

<div>
<h3>To</h3>
<pre>
	A/c number 			: 	${param.a2}
	name 				: 	${requestScope.name2}
</pre>
</div>
</h4>
         <div class="aa">
              <tr>
                  <td>
                       <form action="form.html">
                       <input type="submit" value="pay again" >
                       </form>
                  </td>
                  <td>
				<form action="index.html">
					<input type="submit" value="logout">
				</form>
			</td>
			</tr>    
         </div>
</body>

</html>
