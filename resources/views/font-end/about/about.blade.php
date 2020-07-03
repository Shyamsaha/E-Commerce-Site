@extends('font-end.master')
@section('titel')
  About Developer
@endsection


@section('body')
    <div class="container">
        <h1 class="text-center pt-5"></h1>
        <hr class="w-25 mx-auto pt-5">
        <div class="row pt-5">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <img src="{{asset('/')}}front-end/img/about.jpg" class="img-fluid rounded left" height="450" width="550">
            </div>

            <div class="col-lg-6 col-md-6 col-sm-12">
                <h1 class="text-center">Who Am I?</h1>
                <p>Hey i am Shyam Saha.I am from Bangladesh.Thank you sir/mam. It's really a pleasure of mine to introduced myself.I am shyam saha.I completed my under Graduation Under a privet University. Furthermore,I have attend a few professional training related IT which help me in professional life.
                    While coming to my family,my family is not a austentious family,it is a lower middle class familly.Actually i have learnt taking any challenges from my family.Now coming to me,i m down to the earth creative,punctual and integrity
                    .I am a amicable person who always like to meet and take new challenges
                    .I see all difficulty in positive manner  and keep myself smiling which make me even more stronger.My strongest strengths is attention to details. I totally believe in planning and execution. I always maintain timing. Because of my outgoing nature many people in my university said i am a quite approachable.so i think this are my strengths.well, i think my weakness is i am way to detail oriented.i just want everything to be perfect. Then i realize i am loosing my own time and i am pretty late to submit my task.so i think this is one of my weakness.
                </p>
                <br>
                <form action="{{route('more')}}" method="POST">
                    @csrf
                    <button class="btn btn-primary btn-outline-warning">Know More</button>
                </form>

            </div>
        </div>
    </div>
<br>
    <br>

@endsection
