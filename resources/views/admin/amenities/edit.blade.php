@extends('layouts.admin')
@section('content')
  <div class="container" style="width:70%; margin:0 auto;">
    <div class="row">
  
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Edit Amenitity</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('amenities.index') }}"> Back</a>
            </div>
        </div>
    </div>
    @include('partial.message')
    @include('partial.formerror')


    {!! Form::model($amenities, ['method' => 'PATCH','route' => ['amenities.update',
    $amenities->id]]) !!}
       <div class="form-group">
    <input type="hidden" value="{{csrf_token()}}" name="_token" />
    <label for="name">Name:</label>
    <!--input type="text" class="form-control" name="name"/-->
    {!! Form::text('name', null, array('placeholder' => 'Name',
    'class' => 'form-control')) !!}
</div>  

<div class="form-group">
    <h4>Status</h4>
    <label id="switch">
        {!! Form::checkbox('status', null,@$amenities->status=='1'?true:false)!!}
        <span class="sl"></span>
      </label>

    
    
</div>


<button type="submit" class="btn btn-primary">Update</button>
    {!! Form::close() !!}

</div>
@endsection