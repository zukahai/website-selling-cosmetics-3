<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="apple-touch-icon" sizes="76x76" href="{{asset('asset/user/image/favicon.ico')}}">

    <title> Log in  </title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link rel="apple-touch-icon" sizes="76x76" href="{{asset('asset/user/image/apple-icon.png')}}" />
    <link rel="icon" type="image/png" href="{{asset('asset/user/image/favicon.png')}}" />

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="{{asset('asset/user/css/bootstrap.min.css')}}" rel="stylesheet" />
    <link href="{{asset('asset/user/css/material-bootstrap-wizard.css')}}" rel="stylesheet" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="{{asset('asset/user/css/demo.css')}}" rel="stylesheet" />

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.2/js/toastr.min.js"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.2/css/toastr.min.css">
</head>


<body @yield('onload')>
<div class="image-container set-full-height" style="background-image: url('asset/user/images/slide-04.png')">



    <!--  Made With Material Kit  -->
    <a href="{{route('register')}}" class="made-with-mk">
        <div class="brand"> ? </div>
        <div class="made-with"> <strong>Create a account </strong> </div>
    </a>

    <!--   Big container   -->
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <!--      Wizard container        -->
                <div class="wizard-container">
                    <div class="card wizard-card" data-color="green" id="wizardProfile">
                        <form action="" method="post">
                            @csrf
                            <!--        You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->

                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Log in our website
                                </h3>
                                <h5>Please fill in the correct informations below</h5>
                            </div>
                            <div class="wizard-navigation">
                                <ul>
                                    <li><a href="#about" data-toggle="tab">Account</a></li>

                                </ul>
                            </div>

                            <div class="tab-content">
                                <div class="tab-pane" id="about">
                                    <div class="row">
                                        <h4 class="info-text"> </h4>
                                        <div class="col-sm-4 col-sm-offset-1">
                                            <div class="picture-container">
                                                <div class="">
                                                    <img src="{{asset('asset/user/images/beauty.png')}}">

                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons">face</i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Phone Number <small>(required)</small></label>
                                                    <input name="phoneNumber" type="text" class="form-control">
                                                    @error('phoneNumber')
                                                    <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons">record_voice_over</i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Password <small>(required)</small></label>
                                                    <input name="password" type="password" class="form-control">
                                                    @error('password')
                                                    <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="remember-form">
                                                <input type="checkbox">
                                                <span href="register2.html">Remember me</span>
                                                &nbsp; &nbsp; &nbsp;
                                                <a href="" class="" data-toggle="modal" data-target="#modalLoginForm">Forgot password</a>
                                                &nbsp &nbsp; &nbsp;
                                                <a href="{{route('user.contact')}}" class="" >Help</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div >
                                <div class="pull-right">

                                    <input type='submit' class='btn btn-finish btn-fill btn-success btn-wd' name='finish' value='LOGIN' />

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </form>
                    </div>
                </div> <!-- wizard container -->
            </div>
        </div><!-- end row -->
    </div> <!--  big container -->
{{--    Modal--}}
    <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <form action="{{route('user.login.forgotPassword')}}" method="post">
            @csrf
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body mx-3">
                        <div class="md-form mb-5">
                            <input type="text" id="defaultForm-phonenumber" class="form-control validate" name="phoneNumber">
                            <label data-error="wrong" data-success="right" for="defaultForm-email">Your phone number</label>
                        </div>
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <button class="btn btn-default">Get Password</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
{{--    end Modal--}}

    <div class="footer">
        <div class="container text-center">
            Made with <i class="fa fa-heart heart"></i> by <a>Nguyen Van Hung & Le Khanh Dat</a>.
        </div>
    </div>
</div>

</body>
<!--   Core JS Files   -->
<script src="{{asset('asset/user/js/jquery-2.2.4.min.js')}}" type="text/javascript"></script>
<script src="{{asset('asset/user/js/bootstrap.min.js')}}" type="text/javascript"></script>
<script src="{{asset('asset/user/js/jquery.bootstrap.js')}}" type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="{{asset('asset/user/js/material-bootstrap-wizard.js')}}"></script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="{{asset('asset/user/js/jquery.validate.min.js')}}"></script>
<script>
    function loadPage(result, type) {
        if (result !== null) {
            if (type === 'success')
                toastr.success(result);
            if (type === 'danger')
                toastr.error(result);
            if (type === 'warning')
                toastr.warning(result);
            if (type === 'info')
                toastr.info(result);
        }
    };
</script>

</html>
