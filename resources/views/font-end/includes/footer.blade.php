<div class="footer-w3l">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid">
                <h4>About </h4>
                <p>Hey I am Shyam Saha from Bangladesh.I have Complete my BSc in Computer Scinceand Engineering from Bangladesh University of Business and Technology </p>
                <div class="social-icon">
                    <a href="https://www.facebook.com/profile.php?id=100007501787512"><i class="icon"></i></a>
                    <a href="https://twitter.com/ShyamSa61035983"><i class="icon1"></i></a>
                    <a href="https://www.linkedin.com/in/shyam-saha-876aba144/"><i class="icon3"></i></a>
                </div>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>My Account</h4>
                <ul>
                    @if(Session::get('customerId'))
                        <li><a href="#" onclick="document.getElementById('customerLogoutForm').submit();">Logout</a></li>
                        {{Form::open(['route'=>'customer-logout','method'=>'POST', 'id'=>'customerLogoutForm'])}}
                        {{Form::close()}}
                    @else
                        <li><a href="{{route('new-customer-login')}}">Login</a></li>
                    @endif
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <h4>Information</h4>
                <ul>
                    <li><a href="{{route('/')}}">Home</a></li>
                    <li><a href="#">Call Us: 01865246886</a></li>
                    <li><a href="{{route('send-email')}}l">Contact</a></li>
                    <li><a href="{{route('Section-About')}}">About Developer</a></li>
                    <li><a href="{{route('view-news')}}">News From New Shop</a></li>

                </ul>
            </div>
            <div class="col-md-3 footer-grid foot">
                <h4>Contacts</h4>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#">Mirpur 2.Dhaka,Bangladesh</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="#">+8801865246886</a></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:sham.saha.09@gmail.com">sham.saha.09@gmail</a></li>

                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>

    </div>
</div>
