@extends('layouts.admin')
@section('content')
<div class="container">
 <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="{{url('admin/dashboard')}}">Dashboard</a>
                </li>
                <li class="breadcrumb-item active">ADMIN Dashboard</li>
  </ol>
@include('partial.message')
@include('partial.formerror')
 
  </div>
<div class="container" style="width:70%; margin:0 auto;">
 
<h3>Manage Owner </h3>
<div class="pull-right" style="margin-bottom:30px;">
                <a class="btn btn-success" href="{{ url('admin/owner/create') }}"> Create New Writer</a>
</div>
<br>
<form action="/search" method="POST" role="search">
{{ csrf_field() }}
<div class="input-group">
<input type="text" name="q" placeholder="Search users"> <span class="input-group-btn">
<button type="submit" class="btn btn-default">
<span class="glyphicon glyphicon-search">Search</span>
</button>
</span>
</div>
</form>
<br>
<!-- "{{asset('css/bootstrap-material-datetimepicker.css')}}" -->
<div class="row">
    
<table class="table table-condensed table-responsive" >
        <tr>
               
                <th>Owner Id:</th>
                <th>Name</th>
                <th>Email</th>
              
                
                <th>Action</th>
            </tr>
@foreach ($writers as $writer)


 <tr>
    <td> {{ $writer->id}}</td>
    <td> {{ $writer->name}}</td>
    <td>  {{ $writer->email}}</td>
    <td><a class="btn btn-primary" href="{{ route('owner.edit',$writer->id) }}">Edit</a>
    {!! Form::open([
            'method' => 'DELETE',
            'route' => [
                'owner.destroy',
                 $writer->id
                 ],
            'style'=>'display:inline',
            'onsubmit' => 'return confirm("are you sure ?")'
            ]) !!}
        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
        {!! Form::close() !!}
        <!-- <a class="btn btn-info" href="{{ route('owner.show',$writer->id) }}">Show</a>  -->
        <a class="btn btn-primary" href="{{ route('owner.edit',$writer->id) }}">change Password</a> 
        </td>
     
</tr>
    
  
           
            
            </div> 
            </div> 
        
</div>
@endforeach
</table>
</div>



{!! $writers->links() !!}
</div>
@endsection

