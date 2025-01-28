<%-- 
    Document   : forgetpw
    Created on : 27 Jan, 2025, 1:44:16 AM
    Author     : mahek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="design.css" rel="stylesheet"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="card bg-transparent border-light"
             style=" background: linear-gradient(160deg,#89D8E3,#CD899E,#F9D3C0,#CFE0F8,#CD899E,#9B70A0,#101E42); height: auto; width: 390px; margin: 60px auto;">
            <div class="card-header h3  text-center  ">
                Fish Transportation
            </div>
            <div class="text-center h4 text-white">FORGET PASSWORD</div>

            <div class="card-body">
                <form class="row g-3 ">

                    <div  class=" formmain" >
                        <input type="number" id="mno" placeholder="" class="form-control textbox">
                        <label  class="form-labeline">Enter MobileNo</label>
                    </div>

                    <div class="  formmain">
                        <input type="text" class="form-control textbox"  name="pw"  id="pw" placeholder="">
                        <label  class="form-labeline">New Password</label></div>
                    <div class=" formmain">
                        <input type="text" class="form-control textbox"  name="cpw" id="cpw" placeholder="">
                        <label  class="form-labeline">Confirm Password</label></div>
                    <div class="d-flex">
                        <div class="col-md-3 col-lg-3 col-sm-4 fs-4 fw-bold" id="numcaptchvalue">
                            ssss
                        </div>
                        <div class=" formmain col-lg-9">
                            <input type="text" class="form-control textbox"  name="numcapt" id="numcaptch" placeholder="">
                            <label  class="form-labeline">Enter Captcha</label></div></div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-info text-center text-white " name="btn">Save</button>
                    </div>
                    <div class="mb-1">
                        <a href="Loginform.jsp" class="text-decoration-none  mx-1 text-white">=>Login Form</a>
                    </div>
            </div>
        </form>
        <div class="card-footer text-center  text-white">
            @2025,Porbandar Gujarat 360575</br>Develop by:PMD
        </div> 
    </div>
</body>
</html>
<script type="text/javascript">
    var num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

    var a = num[Math.floor(Math.random() * num.length)];
    var b = num[Math.floor(Math.random() * num.length)];
    var c = num[Math.floor(Math.random() * num.length)];
    var d = num[Math.floor(Math.random() * num.length)];


    var s = a + b + c + d;


    numcaptchvalue.innerHTML = s;
</script>