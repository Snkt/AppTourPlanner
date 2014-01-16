<%-- 
    Document   : newlogin
    Created on : 13 Jan, 2014, 10:50:56 AM
    Author     : sanket
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Metronic | Login Options - Login Form 2</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="<%=request.getContextPath()%>/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/assets/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/assets/css/style-metro.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
        <link href="<%=request.getContextPath()%>/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="<%=request.getContextPath()%>/assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
        <!-- END PAGE LEVEL STYLES -->
        <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <!-- END HEAD -->
    <!-- BEGIN BODY -->
    <body class="login">
        <!-- BEGIN LOGO -->
        <div class="logo">
            <img src="<%=request.getContextPath()%>/assets/img/logo-big.png" alt="" /> 
        </div>
        <!-- END LOGO -->
        <!-- BEGIN LOGIN -->
        <div class="content">
            <!-- BEGIN LOGIN FORM -->
            <form id="form-login" class="form-vertical login-form">
                <h3 class="form-title">Login to your account</h3>
                <div class="alert alert-error hide">
                    <button class="close" data-dismiss="alert"></button>
                    <span>Enter any username and password.</span>
                </div>
                <div class="control-group">
                    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                    <label class="control-label visible-ie8 visible-ie9">Username</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-user"></i>
                            <input id="username" class="m-wrap placeholder-no-fix" type="text" placeholder="Username" name="username"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label visible-ie8 visible-ie9">Password</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-lock"></i>
                            <input id="password" class="m-wrap placeholder-no-fix" type="password" placeholder="Password" name="password"/>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <!--				<label class="checkbox">
                                                    <input type="checkbox" name="remember" value="1"/> Remember me
                                                    </label>-->

                    <button id="loginClick" type="button" name="login" class="btn blue pull-right">
                        Login <i class="m-icon-swapright m-icon-white"></i>
                    </button>            
                </div>
                <!--			<div class="forget-password">
                                                <h4>Forgot your password ?</h4>
                                                <p>
                                                        no worries, click <a href="sendmail.do" class="" id="forget-password">here</a>
                                                        to reset your password.
                                                </p>
                                        </div>
                                        <div class="create-account">
                                                <p>
                                                        Don't have an account yet ?&nbsp; 
                                                        <a href="javascript:;" id="register-btn" class="">Create an account</a>
                                                </p>
                                        </div>-->
            </form>
            <!-- END LOGIN FORM -->        
            <!-- BEGIN FORGOT PASSWORD FORM -->
            <!--		<form class="form-vertical forget-form" action="index.html">
                                    <h3 class="">Forget Password ?</h3>
                                    <p>Enter your e-mail address below to reset your password.</p>
                                    <div class="control-group">
                                            <div class="controls">
                                                    <div class="input-icon left">
                                                            <i class="icon-envelope"></i>
                                                            <input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" name="email" />
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="form-actions">
                                            <button type="button" id="back-btn" class="btn">
                                            <i class="m-icon-swapleft"></i> Back
                                            </button>
                                            <button type="submit" class="btn blue pull-right">
                                            Submit <i class="m-icon-swapright m-icon-white"></i>
                                            </button>            
                                    </div>
                            </form>-->
            <!-- END FORGOT PASSWORD FORM -->
            <!-- BEGIN REGISTRATION FORM -->
            <!--		<form class="form-vertical register-form" action="index.html">
                                    <h3 class="">Sign Up</h3>
                                    <p>Enter your account details below:</p>
                                    <div class="control-group">
                                            <label class="control-label visible-ie8 visible-ie9">Username</label>
                                            <div class="controls">
                                                    <div class="input-icon left">
                                                            <i class="icon-user"></i>
                                                            <input class="m-wrap placeholder-no-fix" type="text" placeholder="Username" name="username"/>
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="control-group">
                                            <label class="control-label visible-ie8 visible-ie9">Password</label>
                                            <div class="controls">
                                                    <div class="input-icon left">
                                                            <i class="icon-lock"></i>
                                                            <input class="m-wrap placeholder-no-fix" type="password" id="register_password" placeholder="Password" name="password"/>
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="control-group">
                                            <label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
                                            <div class="controls">
                                                    <div class="input-icon left">
                                                            <i class="icon-ok"></i>
                                                            <input class="m-wrap placeholder-no-fix" type="password" placeholder="Re-type Your Password" name="rpassword"/>
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="control-group">
                                            ie8, ie9 does not support html5 placeholder, so we just show field title for that
                                            <label class="control-label visible-ie8 visible-ie9">Email</label>
                                            <div class="controls">
                                                    <div class="input-icon left">
                                                            <i class="icon-envelope"></i>
                                                            <input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" name="email"/>
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="control-group">
                                            <div class="controls">
                                                    <label class="checkbox">
                                                    <input type="checkbox" name="tnc"/> I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
                                                    </label>  
                                                    <div id="register_tnc_error"></div>
                                            </div>
                                    </div>
                                    <div class="form-actions">
                                            <button id="register-back-btn" type="button" class="btn">
                                            <i class="m-icon-swapleft"></i>  Back
                                            </button>
                                            <button type="submit" id="register-submit-btn" class="btn blue pull-right">
                                            Sign Up <i class="m-icon-swapright m-icon-white"></i>
                                            </button>            
                                    </div>
                            </form>-->
            <!-- END REGISTRATION FORM -->
        </div>
        <!-- END LOGIN -->




        <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- BEGIN CORE PLUGINS -->




        <script src="<%=request.getContextPath()%>/assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
        <script src="<%=request.getContextPath()%>/assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
        <script src="<%=request.getContextPath()%>/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!--[if lt IE 9]>
        <script src="<%=request.getContextPath()%>/assets/plugins/excanvas.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/plugins/respond.min.js"></script>  
        <![endif]-->   
        <script src="<%=request.getContextPath()%>/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
        <script src="<%=request.getContextPath()%>/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="<%=request.getContextPath()%>/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="<%=request.getContextPath()%>/assets/scripts/app.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/assets/scripts/login-soft.js" type="text/javascript"></script>     
        <script>
            jQuery(document).ready(function() {
                App.init();
                Login.init();
            });
        </script>
        <!-- END PAGE LEVEL SCRIPTS --> 



       <!--<script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/jquery-1.7.2.min.js"></script>-->
<!--<script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/jquery.noty.packaged.min.js"></script>-->

        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/jquery.noty.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/top.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/default.js"></script>
        <!--<script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/inline.js"></script>-->
        <!--<script type="text/javascript" src="<%=request.getContextPath()%>/assets/jpreloader/js/jpreloader.min.js"></script>-->
<script src="http://malsup.github.com/jquery.form.js"></script> 

        <script type="text/javascript">

            $(document).ready(function() { /* jQuery code */
                $("#loginClick").click(function() {

                    if ($('#username').val().length === 0 && $('#password').val().length === 0) {
                        generateNoty('top', 800, 'error', "UserName and password can not be blank");
                    }
                    else if ($('#password').val().length === 0) {
                        generateNoty('top', 800, 'error', "password can not be blank");
                    }
                    else if ($('#username').val().length === 0) {
                        generateNoty('top', 800, 'error', "UserName can not be blank");
                    }
                    else {

                        jQuery.ajax({
                            url: 'loginauth.do',
                            method: 'post',
                            data: $('#form-login').serialize()
                        }).done(function(response) {
                            if (response === "success") {
                                
                                window.location.href = 'home.do';
//                                $("#form-login").ajaxSubmit({url: 'home.do', type: 'post'})
//                                $.post('home.do', $('#form-login').serialize())
                                //                            sendIt();
                                generateNoty('top', 600, 'success', response);
                            }

                            else {
                                generateNoty('top', 800, 'error', "auhtentication failed.");
                            }
                            // Do something with the response
                        }).fail(function() {
                            generateNoty('top', 1000, 'error', "something is wrong..");
                        });

                    }

                })



            });

            function generateNoty(layout, timeout, type, response) {
                var n = noty({
                    layout: layout,
                    type: type,
                    text: response, // can be html or string
//                    dismissQueue: false, // If you want to use queue feature set this true
//                    template: '<div class="noty_message"><span class="noty_text"></span><div class="noty_close"></div></div>',
//                    animation: {
//                        open: {height: 'toggle'},
//                        close: {height: 'toggle'},
//                        easing: 'swing',
//                        speed: 500 // opening & closing animation speed
//                    },
                    timeout: timeout // delay for closing event. Set false for sticky notifications
//                    force: false, // adds notification to the beginning of queue when set to true
//                    modal: false,
//                    maxVisible: 5, // you can set max visible notification for dismissQueue true option,
//                    killer: false, // for close all notifications before show
//                    closeWith: ['hover'], // ['click', 'button', 'hover']
//                    callback: {
//                        onShow: function() {
//                        },
//                        afterShow: function() {
//                        },
//                        onClose: function() {
//                        },
//                        afterClose: function() {
//                        }
//                    },
//                    buttons: false // an array of buttons
                });
            }

//

            function generateNotywithOptions() {
                noty({
                    text: 'Do you want to continue?',
                    buttons: [
                        {addClass: 'btn btn-primary', text: 'Ok', onClick: function($noty) {

                                // this = button element
                                // $noty = $noty element

                                $noty.close();
                                noty({text: 'You clicked "Ok" button', type: 'success'});
                            }
                        },
                        {addClass: 'btn btn-danger', text: 'Cancel', onClick: function($noty) {
                                $noty.close();
                                noty({text: 'You clicked "Cancel" button', type: 'error'});
                            }
                        }
                    ]
                });
            }

        </script>

        <!-- END JAVASCRIPTS -->
    </body>
</html>
