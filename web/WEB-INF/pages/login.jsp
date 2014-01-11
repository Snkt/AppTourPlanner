<%-- 
    Document   : login
    Created on : Jan 10, 2014, 9:03:45 PM
    Author     : snkt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Login to your space..</title>
        <meta name="description" content="Custom Login Form Styling with CSS3" />
        <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <!--<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/jpreloader/css/jpreloader.css" />-->
                <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css" />

        
        <script src="<%=request.getContextPath()%>/js/modernizr.custom.63321.js"></script>
        <!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/jquery-1.7.2.min.js"></script>
        <!--<script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/jquery.noty.packaged.min.js"></script>-->

        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/jquery.noty.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/top.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/default.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/inline.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/jpreloader/js/jpreloader.min.js"></script>
        
        <style>	
            /*@import url(http://fonts.googleapis.com/css?family=Montserrat:400,700|Handlee);*/
            body {
                background: #eedfcc url(images/wood.jpg) no-repeat center top;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                background-size: cover;
            }
/*            .container > header h1,
            .container > header h2 {
                color: #fff;
                text-shadow: 0 1px 1px rgba(0,0,0,0.5);
            }*/
        </style>
    </head>
    <body >
        <div class="container">

            <section class="main">
                
                <form id="form-login1" class="form-5" style="margin-top: 1%;margin-left: 5%;">
                    <!--<h2 style="text-shadow: 0 1px 1px rgba(0,0,0,0.5);">Login to your space..</h2>-->
                    <p>
                        <input type="text" id="login" name="username" placeholder="Username">
                        <input type="password" name="password" id="password" placeholder="Password"> 
                    </p>
                    <button id="loginClick" type="button" name="submit">
                        <i class="icon-arrow-right"></i>
                        <span>Sign in</span>
                    </button> 
                </form>
                </section>
                <section class="main">   
                <form id="form-login" class="form-5" style="margin-top: 1%;margin-right: 5%">
                    <!--<h2 style="text-shadow: 0 1px 1px rgba(0,0,0,0.5);">Login to your space..</h2>-->
                    <p>
                        <input type="text" id="login" name="username" placeholder="Username">
                        <input type="password" name="password" id="password" placeholder="Password"> 
                    </p>
                    <button id="loginClick" type="button" name="submit">
                        <i class="icon-arrow-right"></i>
                        <span>Sign in</span>
                    </button> 
                </form>​​​​
            </section>

        </div>
        <script type="text/javascript">

            $(document).ready(function() { /* jQuery code */
                $("#loginClick").click(function() {
                    jQuery.ajax({
                        url: 'loginauth.do',
                        method: 'post',
                        data: $('#form-login').serialize()
                    }).done(function(response) {
                        if(response === "success"){
                            
                            
                            generateNoty('top',600,'success',response);
                        }else{
                            generateNoty('top',600,'error',response);
                        }
                        // Do something with the response
                    }).fail(function() {
                        // Whoops; show an error.
                    });
                })
                
                
                
            });

            function generateNoty(layout, timeout,type,response) {
                var n = noty({
                    layout: layout,
                    type:type,
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

    </body>
</html>
