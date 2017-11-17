<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
<head><title>SVNIT Online Quiz </title></head>
<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"/>
<link rel="stylesheet" type="text/css" href="/cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
<body>
<div class="container">

    <form class="well form-horizontal" action="aData.jsp" method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend>Add Question</legend>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Write A  question!!!</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="question" placeholder="Question" class="form-control" required  type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Option 1</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="option1" placeholder="Option 1" class="form-control" required   type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Option 2</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="option2" placeholder="Option 2" class="form-control" required  type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Option 3</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="option3" placeholder="Option 3" class="form-control" required  type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Option 4</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="option4" placeholder="Option 4" class="form-control" required   type="text">
    </div>
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Correct Answer</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="ans" placeholder="Answer" class="form-control" required  type="text">
    </div>
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Special Number</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="qid" placeholder="Special Number" class="form-control" required  type="text">
    </div>
  </div>
</div>

<!-- Success message -->

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    <button type="submit" class="btn btn-warning" >Send <span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>

</fieldset>
</form>
</div>
    </div><!-- /.container -->
    </body>
    </html>