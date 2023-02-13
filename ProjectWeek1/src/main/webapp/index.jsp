<%--@elvariable id="result" type="sun"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="main.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="d-flex justify-content-center mt-5">
    <form method="POST" action="<%=request.getContextPath()%>/calculator" id="form-calculator">
        <div class="calculator card">

            <input type="text" class="calculator-screen z-depth-1" value="${result == null ? 0 : result}" disabled />

            <div class="calculator-keys">

                <button type="button" class="operator btn btn-info" value="+">+</button>
                <button type="button" class="operator btn btn-info" value="-">-</button>
                <button type="button" class="operator btn btn-info" value="*">&times;</button>
                <button type="button" class="operator btn btn-info" value="/">&divide;</button>

                <button type="button" value="7" class="btn btn-light waves-effect">7</button>
                <button type="button" value="8" class="btn btn-light waves-effect">8</button>
                <button type="button" value="9" class="btn btn-light waves-effect">9</button>


                <button type="button" value="4" class="btn btn-light waves-effect">4</button>
                <button type="button" value="5" class="btn btn-light waves-effect">5</button>
                <button type="button" value="6" class="btn btn-light waves-effect">6</button>


                <button type="button" value="1" class="btn btn-light waves-effect">1</button>
                <button type="button" value="2" class="btn btn-light waves-effect">2</button>
                <button type="button" value="3" class="btn btn-light waves-effect">3</button>


                <button type="button" value="0" class="btn btn-light waves-effect">0</button>
                <button type="button" class="decimal function btn btn-secondary" value=".">.</button>
                <button type="button" class="all-clear function btn btn-danger btn-sm" value="all-clear">AC</button>

                <button type="submit" class="equal-sign operator btn btn-warning" value="=">=</button>

                <input type="text" hidden name="firstNumber" id="firstNumber" value=""/>
                <input type="text" hidden name="secondNumber" id="secondNumber" value=""/>
                <input type="text" hidden name="operator" id="operator" value=""/>
            </div>
        </div>
    </form>

</div>
<script src="main.js"></script>
</body>
</html>
