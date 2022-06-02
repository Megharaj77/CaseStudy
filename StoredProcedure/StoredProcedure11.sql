Delimiter //
drop  procedure if exists p_create_sr;
create procedure p_create_sr( in arg_user_id int,
                              in arg_loc_id int,
                              in arg_cubical_no int,
                              in arg_dept_id int,
                              in arg_required_by_date date,
                              in arg_req_typeid int,
                              in arg_justification varchar(25),
                              in arg_status_id int)
	Begin
    if (arg_user_id is null or arg_loc_id is null or arg_cubical_no is null  or arg_dept_id is null or arg_required_by_date is null or arg_req_typeid is null or arg_justification is null or arg_status_id is null)  
     Then 
     select 'Enter all the input to rise request';
     end if;
     
     if (arg_user_id is not null and arg_loc_id is not null and arg_cubical_no is not null and arg_dept_id is not null and arg_required_by_date is not null and arg_req_typeid is not null and arg_justification is not null and arg_status_id is not null)
     then
     
    insert into sr_details (user_id,loc_id,cubical_no,dept_id,required_by_date,req_typeid,justification,status_id) 
    values(arg_user_id,arg_loc_id,arg_cubical_no,arg_dept_id,arg_required_by_date,arg_req_typeid,arg_justification,arg_status_id);
    
    select LAST_INSERT_ID();
    end if;
   
   end //
   Delimiter ;
   
   
   
   
   delimiter //
   drop procedure if exists p_update_sr;
   create procedure p_update_sr( in arg_req_id int,
                                in arg_loc_id int,
                                in arg_cubical_no int,
                                in arg_dept_id int,
                                in arg_required_by_date date,
                                in arg_req_typeid int,
                                in arg_rejection_reason varchar(50),
                                in arg_cancellation_reason varchar(50),
                                in arg_committed_date date,
                                in arg_justification varchar(50),
                                in arg_status_id int)
                                
	begin
    update sr_details
    set
    loc_id=loc_id,
    cubical_no=cubical_no,
    dept_id = dept_id,
    rejection_reason = arg_rejection_reason,
    required_by_date=required_by_date,
    req_typeid=req_typeid,
    rejection_reason=arg_rejection_reason,
    cancellation_reason = arg_cancellation_reason,
    committed_date = arg_committed_date,
    justification = arg_justification,
    status_id = arg_status_id
     where req_id = arg_req_id;
     
     select 'updation successfull';
     if(arg_req_id is null) then 
     select 'updation is not successfull';
     end if;
    end //
    delimiter ;
   
   
   
   
    
