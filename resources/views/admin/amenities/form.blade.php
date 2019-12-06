<div class="form-group">
    <input type="hidden" value="{{csrf_token()}}" name="_token" />
    <label for="name">Name:</label>
    <!--input type="text" class="form-control" name="name"/-->
    {!! Form::text('name', null, array('placeholder' => 'Name',
    'class' => 'form-control')) !!}
</div>  
<div class="form-group">
    <label for="start_time">Image</label>
    {!! Form::file('icon_image',array('placeholder' => 'Selete Image',
    'class' => 'form-control')) !!}

</div>

 {{-- <div class="form-group">
    <label for="end_time">Status</label>
    <!--input type="text" class="form-control" name="dob"/-->
    {!! Form::text('status', null, array('placeholder' => 'status',
                'class' => 'form-control')) !!}
</div> --}}
<div class="form-group">
    <h4>Status</h4>
    <label id="switch">
        {!! Form::checkbox('status', null,@$amenity->status=='1'?true:false)!!}
        <span class="sl"></span>
      </label>

    <!--input type="text" class="form-control" name="dob"/-->
    {{-- {!! Form::checkbox('status', null,true, array('checked','data-on-color'=>'info','data-off-color'=>'success','data-on-text'=>'1','data-off-text'=>'0')) !!} --}}
    
</div>


<button type="submit" class="btn btn-primary">Submit</button>