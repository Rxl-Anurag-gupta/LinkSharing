<%--
  Created by IntelliJ IDEA.
  User: anurag
  Date: 13/03/22
  Time: 1:30 PM
--%>

<%@ page import="com.rxlogix.Topic; com.rxlogix.Subscription" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
    body {
        background-color: #d9d0d0;
    }
    .icon{
        color: grey;
        z-index: 1.5;
        position: absolute;
        width: 2em;
        height: 2em;
        line-height: 2em;
        padding-left: 18px;
    }
    input[type= search]{
        width: 190px;
        padding-left: 35px;
    }
    .et{
        color: white;
    }
    .d1 {
        border: 2px solid black;
        border-radius: 10px;
        margin-top: 20px;
    }
    .d2 {
        border: 2px solid black;
        border-radius: 10px;
        margin-top: 20px;
        height: 400px;
        overflow: scroll;
    }
    .spacing {
        margin-top: 20px;
    }

    .navbar{
        background-color: #7c7676;
        position: sticky;
        top: 0;
    }
    a{
        color: #003a8f;
    }

    .login-form {
        width: 340px;
        margin: 25px auto;
        font-size: 15px;
    }
    .login-form form {
        margin-bottom: 15px;
        background: #d9d0d0;
        box-shadow: 0px 2px 2px rgb(0 0 0 / 30%);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-group {
        margin-bottom: 1rem;
    }
    .edittopic{
        display: none;
    }

    </style>
    <style>
    body {
        background-color: #d9d0d0;
    }

    .icn{
        color: white;
    }

    .d1 {
        border: 2px solid black;
        border-radius: 10px;
        margin-top: 20px;
    }
    .d2 {
        border: 2px solid black;
        border-radius: 10px;
        margin-top: 20px;
        max-height: 400px;
        overflow: scroll;

    }
    .spacing {
        margin-top: 20px;
    }
    .styling{
        margin-top: 25px;
        margin-left: 22px;
        border: 2px solid black;
        border-radius: 6px;
        height: 1000px;
        overflow: scroll;
    }
    .cls {
        font-size: 15px;
        padding-left: 25px;
    }
    .modal{
        position: fixed;
        z-index: 1;
        padding-top: 100px;
        background-color: rgba(0,0,0,0.4);
    }
    .modal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 4px;
        border: 1px solid #888;
        width: 30%;
        height: 330px;
        background-color: #d9d0d0;
    }
    .mh{
        padding:10px;
        border: 3px #787878;
        border-radius: 5px;
        background-color:#7c7676;
    }
    .box {
        width: 120px;
        border: 1px solid black;
        background-color: #eee;
        border-radius: 5px;
    }
    .edit-topic{
        display: none;
    }
    .edittopic{
        display: none;
    }

    .navbar{
        background-color: #7c7676;
        position: sticky;
        top: 0;
    }
    a{
        color: #003a8f;
    }

    .fa {
        padding: 10px;
        font-size: 15px;
        text-align: center;
        text-decoration: none;
        margin-right: 1px;
    }

    .fa:hover {
        opacity: 0.7;
    }

    .fa-facebook {
        background: #3B5998;
        color: white;
    }

    .fa-twitter {
        background: #55ACEE;
        color: white;
    }
    .fa-google {
        background: #dd4b39;
        color: white;
    }
    .icon{
        color: #7c7676;
        position: absolute;
        line-height: 1.2em;
        padding-left: 18px;
    }
    input[type= search]{
        width: 190px;
        padding-left: 35px;
    }
    </style>

</head>
<body>
<nav class="navbar sticky-top nav1">
    <div class="container col-lg-6">
        <g:link class="navbar-brand" style="color: white" controller="dashboard" action="dash">Link Sharing</g:link>    </div>
    </div>
    <div class="container col-lg-6">
        <span style="margin-left: 250px">
            <i class="fa fa-search icon"></i>
            <g:form controller="search" action="search">
                <input type="search" name="searchElement" placeholder="Search..." class="form-control"/>
            </g:form>
        </span>
        <a href="#" class="icn" style="color: white">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-chat-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg"  onclick="document.getElementById('Modal-topic').style.display='block'">
                <path d="M8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6-.097 1.016-.417 2.13-.771 2.966-.079.186.074.394.273.362 2.256-.37 3.597-.938 4.18-1.234A9.06 9.06 0 0 0 8 15z"/>
            </svg>
        </a>
        <a href="#" class="icn" style="color: white">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg"  onclick=" document.getElementById('Modal-invite').style.display='block'">
                <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
            </svg>
        </a>
        <a href="#" class="icn" style="color: white">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-link-45deg" fill="currentColor" xmlns="http://www.w3.org/2000/svg"  onclick="document.getElementById('Modal-url').style.display='block'">
                <path d="M4.715 6.542L3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.001 1.001 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
                <path d="M5.712 6.96l.167-.167a1.99 1.99 0 0 1 .896-.518 1.99 1.99 0 0 1 .518-.896l.167-.167A3.004 3.004 0 0 0 6 5.499c-.22.46-.316.963-.288 1.46z"/>
                <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 0 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 0 0-4.243-4.243L6.586 4.672z"/>
                <path d="M10 9.5a2.99 2.99 0 0 0 .288-1.46l-.167.167a1.99 1.99 0 0 1-.896.518 1.99 1.99 0 0 1-.518.896l-.167.167A3.004 3.004 0 0 0 10 9.501z"/>
            </svg>
        </a>
        <a href="#" class="icn" style="color: white">
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-file-earmark-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg"  onclick="document.getElementById('Modal-document').style.display='block'">
                <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z"/>
                <path fill-rule="evenodd" d="M13.5 10a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                <path fill-rule="evenodd" d="M13 12.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
            </svg>
        </a>
        <div class="btn-group">
            <button type="button" class="btn" style="color: white">
                <svg width="25px" height="25px" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                </svg>
            </button>
            <div class="dropdown">
                <button type="button" class="btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white">
                    ${user.firstname}
                </button>
                <div class="dropdown-menu">
                    <g:link controller="profile" action="editprofile" class="dropdown-item">Profile</g:link>
                    <g:if test="${user.admin}">
                        <g:link controller="admin" action="users" class="dropdown-item">Users</g:link>
                        <g:link controller="topic" action="topiclist" class="dropdown-item">Topics</g:link>
                    %{--                            <g:link class="dropdown-item" href="#">Posts</g:link>--}%
                    </g:if>
                    <g:link controller="login" action="logout" class="dropdown-item">Log Out</g:link>
                </div>
            </div>
        </div>
    </div>
</nav>
<g:if test="${flash.message}">
    <div class="alert alert-success alert-dismissible fade show" id="fm" role="alert">
        <strong>${flash.message}!</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</g:if>
<g:if test="${flash.error}">
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <div class="alert alert-danger" role="status">${flash.error}</div>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</g:if>



<div class="container-fluid">
    <div class="row">
        <div class="col-md-5">
                <div class="d1 mb-5">
                    <div class="row" id="user">
                        <div class="col-md-3">
                            <g:if test="${user.userImage}">
                                <asset:image src="${user.email}.png" class="img-fluid rounded-start" alt="..." />
                            </g:if>
                            <g:else>
                                <img src="data:image/jpeg;base64,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" class="img-fluid rounded-start" alt="...">
                            </g:else>
                        </div>
                        <div class="col-md-9">
                            <h3>${user.firstname} ${user.lastname}</h3>
                            <g:link controller="profile" action="userprofile" params="[uid:user.id]"><h5 class="fst-italic">@${user.username}</h5></g:link>
                            <div class="row mt-4">
                                <div class="col-md-3">
                                    <h6 class="text-muted">Subcriptions</h6>
                                    <g:link controller="profile" action="userprofile" params="[uid:user.id]">${Subscription.countByCreatedBy(user)}</g:link>
                                </div>
                                <div class="col-md-9">
                                    <h6 class="text-muted">Topics</h6>
                                    <g:link controller="profile" action="userprofile" params="[uid:user.id]"> ${Topic.countByCreatedBy(user)}</g:link>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d2">
                    <nav class="navbar navbar-light " style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                        <div class="container">
                            <div class="navbar-header">
                                <a class="navbar-brand et" href="#">Topics</a>
                            </div>

                        </div>
                    </nav>
                    <g:each in="${Topic.findAllByCreatedBy(user)}" var="val">
                        <div class="row">
                            <div class="col-md-3">
                                <g:if test="${val.createdBy.userImage}">
                                    <asset:image src="${val.createdBy.email}.png" class="img-fluid rounded-start" alt="..." />
                                </g:if>
                                <g:else>
                                    <img src="data:image/jpeg;base64,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" class="img-fluid rounded-start" alt="...">
                                </g:else>
                            </div>
                            <div class="col-md-9">
                                <div>
                                    <g:link controller="topic" action="topicshow" params="[tid:val.id]"><h5>${val.topicName}</h5></g:link>
                                    <g:form controller="topic" action="editname" params="[tid:val.id]">
                                        <div id="${val.id}" class="edittopic">
                                            <input type="text" name="topicname" style="margin-right: 5px; width: 30%;">
                                            <g:submitButton name="Submit" value="save"/>
                                            <input onclick="cancel('${val.id}')" type="button" value="cancel" class="submit" style="margin-right: 4px;">
                                        </div>
                                    </g:form>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-md-6">
                                        <g:link controller="profile" action="userprofile" params="[uid:user.id]"><h5 class="fst-italic">@${user.username}</h5></g:link>
                                    </div>
                                    <div class="col-md-3">
                                        <h6 class="text-muted">Subscriptions</h6>
                                        <g:link controller="profile" action="userprofile" params="[uid:user.id]">${Subscription.countByCreatedBy(user)}</g:link>
                                    </div>
                                    <div class="col-md-3">
                                        <h6 class="text-muted">Topics</h6>
                                        <g:link controller="profile" action="userprofile" params="[uid:user.id]"> ${Topic.countByCreatedBy(user)}</g:link>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="container">
                        <div class="container spacing">
                            <div class="row">
                                <div class="col-md-5">
                                    <g:form controller="subscription" action="changeserious">
                                        <g:field type="hidden" name="sid" value="${val.id}"></g:field>
                                        <g:select onChange="submit()" name="seriousness" from="${['Serious', 'VerySerious', 'Casual']}"
                                                  value="${Subscription.findByTopics(val).seriousness}" />
                                    </g:form>
                                </div>
                                <div class="col-md-4">
                                    <g:form controller="subscription" action="changevisibility">
                                        <g:field type="hidden" name="tid" value="${val.id}"></g:field>
                                        <g:select onChange="submit()" name="visibility" from="${['Public','Private']}"
                                                  value="${val.visibility}" />
                                    </g:form>
                                </div>
                                <div class="col-md-1">
                                    <a href="#">
                                        <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0  1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                                        </svg>
                                    </a>
                                </div>

                                <div class="col-md-1">
                                    <a href="#" onclick="topicname('${val.id}')">
                                        <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-file-earmark-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg"  >
                                            <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z"/>
                                            <path fill-rule="evenodd" d="M13.5 10a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13v-1.5a.5.5 0 0 1 .5-.5z"/>
                                            <path fill-rule="evenodd" d="M13 12.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z"/>
                                        </svg>
                                    </a>
                                </div>
                                <div class="col-md-1">
                                    <g:link controller="topic" action="deletetopic" params="[id: val.id]">
                                        <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                        </svg>
                                    </g:link>
                                </div>
                        </div>
                        </div>
                    </div>
                        <hr>
                    </g:each>
                </div>
            </div>

        <div class="col-md-1">

        </div>

        <div class="col-md-6">
            <div class="d1">
                <nav class="navbar navbar-inverse " style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <b>Profile</b>
                        </div>
                    </div>
                </nav>
                <div class="login-form">
                    <g:uploadForm controller="profile" action="updateprofile" params="[uid:user.id]">
                        <div class="form-group f1" style="margin-top: 10px">
                            <div class="form-group">
                                <label for="firstname">First Name</label>
                                <g:textField required="required" name="firstname" id="firstname" value="${user.firstname}" />
                            </div>
                            <div class="form-group">
                                <label for="lastname">Last Name</label>
                                <g:textField required="required" name="lastname" id="lastname" value="${user.lastname}" />
                            </div>
                            <div class="form-group">
                                <label for="username">User Name</label>
                                <g:textField required="required" name="username" id="username" value="${user.username}" />
                            </div>
                            <div class="form-group">
                                <label for="userImage">Upload Image</label>
                                <input type="file" name="userImage" id="userImage">
                            </div>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </g:uploadForm>
                </div>
            </div>
            <div class="d1">
                <nav class="navbar navbar-inverse " style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <b>Change Password</b>
                        </div>
                    </div>
                </nav>
                <div class="login-form">
                <g:form controller="profile" action="updatepassword"  params="[uid:user.id]">
                    <div class="form-group f1" style="margin-top: 10px">
                        <div class="form-group">
                            <label for="password">Password</label>
                            <g:passwordField required="required" name="password" id="password"/>
                        </div>
                        <div class="form-group">
                            <label for="confirmpassword">Confirm Password</label>
                            <g:passwordField required="required" name="confirmpassword" id="confirmpassword"/>
                        </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </g:form>
                </div>
            </div>

        </div>
    </div>
</div>
<g:render template="/modal/modalTemplate"/>

<script>
    setTimeout(
        function() {
            document.getElementById("fm").style.display='none';
        }, 3000
    );


    function mail(){
        alert("Sorry this functionality is currently unavailable ")
    }
    function topicname(idname){
        document.getElementById(idname).style.display="block";
    }
    function cancel(idname){
        document.getElementById(idname).style.display="none";
    }
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>