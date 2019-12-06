@extends('layouts.admin');
@section('content')
<div class="container" style="width:70%; margin:0 auto;">
    <div class="pull-right">
        <a class="btn btn-primary" href="{{ route('owner.index') }}"> Back</a>
            </div>
<h2>Writer Form</h2>
@include('partial.message')
@include('partial.formerror')
    {!! Form::open(array('route' => 'owner.store','method'=>'POST')) !!}
         @include('admin.writer.form')
    {!! Form::close() !!} 
</div>
@endsection
