<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="apple-touch-icon" sizes="76x76" href="image/favicon.ico">

    <title> Register  </title>

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
</head>

<body>
<div class="image-container set-full-height" style="background-image: url('asset/user/images/slide-04.png')">



    <!--  Made With Material Kit  -->
    <a href="http://demos.creative-tim.com/material-kit/index.html?ref=material-bootstrap-wizard" class="made-with-mk">
        <div class="brand"> HD </div>
        <div class="made-with"><strong> HUDA</strong> Cosmetics</div>
    </a>

    <!--   Big container   -->
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <!--      Wizard container        -->
                <div class="wizard-container">
                    <div class="card wizard-card" data-color="green" id="wizardProfile">
                        <form action="" method="post" enctype="multipart/form-data">
                            @csrf
                            <!--        You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->

                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Create a Account
                                </h3>
                                <h5>This information will let us know more about you.</h5>
                            </div>
                            <div class="wizard-navigation">
                                <ul>
                                    <li><a href="#about" data-toggle="tab">About</a></li>
                                    <li><a href="#account" data-toggle="tab">Account</a></li>
                                    <li><a href="#address" data-toggle="tab">Address</a></li>
                                </ul>
                            </div>

                            <div class="tab-content">
                                <div class="tab-pane" id="about">
                                    <div class="row">
                                        <h4 class="info-text"> Let's start with the basic information (with validation)</h4>
                                        <div class="col-sm-4 col-sm-offset-1">
                                            <div class="picture-container">
                                                <div class="picture">
                                                    <img src="{{asset('asset/user/image/default-avatar.png')}}" class="picture-src" id="wizardPicturePreview" title=""/>
                                                    <input type="file" id="wizard-picture" name="image">
                                                </div>
                                                <h6>Choose Picture</h6>
                                                @error('image')
                                                <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons">face</i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">First Name <small>(required)</small></label>
                                                    <input name="firstname" type="text" class="form-control">
                                                    @error('firstname')
                                                    <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons">record_voice_over</i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Last Name</label>
                                                    <input name="lastname" type="text" class="form-control">
                                                    @error('lastname')
                                                    <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-10 col-sm-offset-1">
                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons"><i class="fa fa-birthday-cake" aria-hidden="true"></i></i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label"></label>
                                                    <input name="birthday" type="date" class="form-control">
                                                    @error('birthday')
                                                    <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                                <div class="tab-pane" id="account">
                                    <h4 class="info-text">Please fill in your contact information </h4>
                                    <div class="row">

                                        <div class="col-sm-10 col-sm-offset-1">
                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons">phone</i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Phone Number <small>(required)</small></label>
                                                    <input name="phonenumber" type="" class="form-control">
                                                    @error('phonenumber')
                                                    <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-sm-10 col-sm-offset-1">
                                            <div class="input-group">
													<span class="input-group-addon">
														<i class="material-icons">email</i>
													</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Email <small>(required)</small></label>
                                                    <input name="email" type="email" class="form-control">
                                                    @error('email')
                                                    <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-sm-10 col-sm-offset-1">
                                            <div class="input-group">
														<span class="input-group-addon">
															<i class="material-icons">password</i>
														</span>
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Password <small>(required)</small></label>
                                                    <input name="password" type="password" class="form-control">
                                                    @error('password')
                                                    <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                                <div class="tab-pane" id="address">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <h4 class="info-text">What is your address ? </h4>
                                        </div>
                                        <div class="col-sm-7 col-sm-offset-1">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Street Name</label>
                                                <input type="text" class="form-control" name="streetName">
                                                @error('image')
                                                <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Street Number</label>
                                                <input type="text" class="form-control" name="streetNumber">
                                                @error('streetNumber')
                                                <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group label-floating">
                                                <label class="control-label">District</label>
                                                <input type="text" class="form-control" name="district">
                                                @error('district')
                                                <span class="text-bold text-italic text-danger">{{$message}}</span>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-group label-floating">
                                                <label class="control-label">City</label>
                                                <select name="city" class="form-control">
                                                    <option disabled="" selected=""></option>
                                                    <option value="Da Nang"> Da Nang </option>
                                                    <option value="Ha Noi"> Ha Noi </option>
                                                    <option value="Ho Chi Minh"> Ho Chi Minh </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="wizard-footer">
                                <div class="pull-right">
                                    <input type='button' class='btn btn-next btn-fill btn-success btn-wd' name='next' value='Next' />
                                    <input type='submit' class='btn btn-finish btn-fill btn-success btn-wd' name='finish' value='Finish' />
                                </div>

                                <div class="pull-left">
                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Previous' />
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </form>
                    </div>
                </div> <!-- wizard container -->
            </div>
        </div><!-- end row -->
    </div> <!--  big container -->

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

</html>
