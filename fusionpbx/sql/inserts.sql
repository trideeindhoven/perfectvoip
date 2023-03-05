INSERT INTO v_vars (var_uuid,var_category,var_name,var_value,var_command,var_hostname,var_enabled) 
    select uuid_in(md5(random()::text || now()::text)::cstring),'Ringtones','nl-ring','%(1000,3000,425)','set',NULL,'true'  
	 WHERE not exists (  select * from v_vars where var_category = 'Ringtones' and var_name = 'nl-ring' );
