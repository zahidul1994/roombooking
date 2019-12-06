@extends('layouts.welcomeblank')
@section('css')
@endsection
@section('content')
<div class="row">
                    <!-- Column -->
                    <div class = "col-lg-8 col-xlg-9 col-md-7">

                    <!-- Column -->
                    <!-- Column -->

                        <div class="card">
                            <!-- Nav tabs -->

                            <!-- Tab panes -->


                                    <div class="card-body">
                                        <div class="profiletimeline">
                                        <div class="sl-item">

                                                <div class="sl-right">
                                                    <div>
                                                        <div class="m-t-20 row">
                                                        <div class="col align-self-center">
                                                        <h1>{{$room->title}}</h1>
                                                        </div>

                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="sl-item">

                                                <div class="sl-right">
                                                    <div>
                                                        <div class="row">
                                                        @foreach($room->photos as $pic)
                                                        <?php
            $imageinfo = pathinfo(url('/storage/postimages/'.$pic->name));
            //print_r($imageinfo);
            ?>
                                                            <div class="col-lg-3 col-md-6 m-b-20"><img src="{{url('/storage/postimages/'.$pic->name)}}" class="img-responsive radius" /></div>


                                                            @endforeach
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <hr>

                                            <div class="sl-item">

                                                <div class="sl-right">
                                                    <div>
                                                    <div class="row">
                                                    <div class="col-lg-4 col-md-6 col-xlg-2 col-xs-12">
                                <div class="ribbon-wrapper card">
                                    <div class="ribbon ribbon-primary">Ribbon</div>
                                    <p class="ribbon-content">Duis mollis, est non commodo luctus, nisi erat porttitor ligula</p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-xlg-2 col-xs-12">
                                <div class="ribbon-wrapper card">
                                    <div class="ribbon ribbon-primary">Ribbon</div>
                                    <p class="ribbon-content">Duis mollis, est non commodo luctus, nisi erat porttitor ligula</p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-xlg-2 col-xs-12">
                                <div class="ribbon-wrapper card">
                                    <div class="ribbon ribbon-primary">Ribbon</div>
                                    <p class="ribbon-content">Duis mollis, est non commodo luctus, nisi erat porttitor ligula</p>
                                </div>
                            </div>
                            </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <hr>
                                            <div class="sl-item">

                                                <div class="sl-right">

                                                    <div>
                                                    <div class="row">



                                                    </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                <!--second tab-->
                                <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                    <div class="card">
                            <div class="card-body">
                                <center class="m-t-30"> <img src="{{asset('images/users/5.jpg')}}" class="img-circle" width="150" />
                                    <h4 class="card-title m-t-10">Hanna Gover</h4>
                                    <h6 class="card-subtitle">Accoubts Manager Amix corp</h6>
                                    <div class="row text-center justify-content-md-center">
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-people"></i> <font class="font-medium">254</font></a></div>
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-picture"></i> <font class="font-medium">54</font></a></div>
                                    </div>
                                </center>
                            </div>
                            <div>
                                <hr> </div>
                            <div class="card-body"> <small class="text-muted">Email address </small>
                                <h6>hannagover@gmail.com</h6> <small class="text-muted p-t-30 db">Phone</small>
                                <h6>+91 654 784 547</h6> <small class="text-muted p-t-30 db">Address</small>
                                <h6>71 Pilgrim Avenue Chevy Chase, MD 20815</h6>
                                 <small class="text-muted p-t-30 db">Social Profile</small>
                                <br/>
                                <button class="btn btn-circle btn-secondary"><i class="fa fa-facebook"></i></button>
                                <button class="btn btn-circle btn-secondary"><i class="fa fa-twitter"></i></button>
                                <button class="btn btn-circle btn-secondary"><i class="fa fa-youtube"></i></button>
                            </div>
                            </div>

                        <div class="card">
                            <div class="card-body">
                            <div id="map" style="width:100%; height: 400px;">
              </div>

                            </div>
                        </div>
                    </div>


                    <!-- Column -->
                </div>
                <div class="row">
                <div class="card">
                <h4 class="card-title">Reviews</h4>
                                        <ul class="list-unstyled">
                                            <li class="media">
                                                <img class="d-flex mr-3" src="{{asset('images/users/1.jpg')}}" width="60" alt="Generic placeholder image">
                                                <div class="media-body">
                                                    <h5 class="mt-0 mb-1">List-based media object</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                                </div>
                                            </li>
                                            <li class="media my-4">
                                                <img class="d-flex mr-3" src="{{asset('images/users/2.jpg')}}" width="60" alt="Generic placeholder image">
                                                <div class="media-body">
                                                    <h5 class="mt-0 mb-1">List-based media object</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                                </div>
                                            </li>
                                            <li class="media">
                                                <img class="d-flex mr-3" src="{{asset('images/users/3.jpg')}}" width="60" alt="Generic placeholder image">
                                                <div class="media-body">
                                                    <h5 class="mt-0 mb-1">List-based media object</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                                    <div class="media mt-3">
                                                        <a class="d-flex pr-3" href="#">
                                                            <img src="{{asset('images/users/4.jpg')}}" width="60" height="60" alt="Generic placeholder image">
                                                        </a>
                                                        <div class="media-body">
                                                            <h5 class="mt-0">Media heading</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                </div>
                </div>
@endsection
@section('script')
<script>

  var map, marker;
  function initMap() {
        var locations = {lat: {{$room->latitude}}, lng: {{$room->longitude}}};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 10,
          center: locations
        });

        marker = new google.maps.Marker({
          position: locations,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: "{{asset('images/'.$room->category_id.'.png')}}",
          title: '{{$room->title}}',
          mapTypeId: 'satellite'
        });
        marker.addListener('click', toggleBounce);

      }
      function toggleBounce() {
        if (marker.getAnimation() !== null) {
          marker.setAnimation(null);
        } else {
          marker.setAnimation(google.maps.Animation.BOUNCE);
        }
      }
</script>

<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCe6-2NR2lqdZFfp7wuqAa9PiJg8PV1HJA&callback=initMap">
</script>
@endsection

