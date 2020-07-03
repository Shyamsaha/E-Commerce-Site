@extends('font-end.master')
@section('titel')
    Know More
@endsection


@section('body')
    <div class="container" style="height: 50%">
        <h1 class="text-center pt-5 ">Skills</h1>
        <hr class="w-25 mx-auto pt-5">
        <div class="row mb-5">
            <div class="col-lg-6 col-md-6 col-sm-12" id="image">
                <img src="{{asset('/')}}front-end/img/pi.jpg" class="img-fluid" height="500" width="300" >

            </div>
            <br>

            <div class="col-lg-6 col-md-6 col-sm-12">
                <h4>Web Development</h4>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%">
                        80%
                    </div>
                </div>
                <br>
                <h4>Photography</h4>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%">
                        90%
                    </div>
                </div>
                <br>
                <h4>Photo Editing</h4>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%">
                        70%
                    </div>
                </div>
                <br>
                <h4>Adobe Photoshop</h4>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:60%">
                        60%
                    </div>
                </div>
                <br>
                <h4>Adobe Illustrator</h4>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%">
                        50%
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
@endsection
