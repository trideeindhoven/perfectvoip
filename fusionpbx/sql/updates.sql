UPDATE v_vars SET var_value='NL',          var_enabled='true' WHERE var_name='default_country'      and var_category='Defaults';
UPDATE v_vars SET var_value='nl',          var_enabled='true' WHERE var_name='default_language'     and var_category='Defaults';
UPDATE v_vars SET var_value='nl',          var_enabled='true' WHERE var_name='default_dialect'      and var_category='Defaults';
UPDATE v_vars SET var_value='googlefemalewavenete', var_enabled='true' WHERE var_name='default_voice' and var_category='Defaults';
UPDATE v_vars SET var_value='$${nl-ring}', var_enabled='true' WHERE var_name='ringback'             and var_category='Defaults'
UPDATE v_vars SET var_value='$${nl-ring}', var_enabled='true' WHERE var_name='transfer_ringback'    and var_category='Defaults'
UPDATE v_vars SET var_value='31',          var_enabled='true' WHERE var_name='default_countrycode'  and var_category='Defaults'
UPDATE v_vars SET var_value='PCMA,PCMU',   var_enabled='true' WHERE var_name='outbound_codec_prefs' and var_category='Codecs'
UPDATE v_vars SET var_value='PCMA,PCMU,G7221@32000h,G7221@16000h,G722', var_enabled='true' WHERE var_name='global_codec_prefs' and var_category='Codecs'
UPDATE v_vars SET var_value='$${sounds_dir}/nl/nl/googlefemalewavenete', var_enabled='true' WHERE var_name='sound_prefix'      and var_category='Sound'

UPDATE v_default_settings SET default_setting_value_value='Europe/Amsterdam',     default_setting_enabled='true' WHERE default_setting_subcategory='time_zone' and default_setting_category='domain';
UPDATE v_default_settings SET default_setting_value_value='fax_enable_t38=false', default_setting_enabled='true' WHERE default_setting_subcategory='fax' and default_setting_description='Enable T.38';
UPDATE v_default_settings SET default_setting_value_value='true',                 default_setting_enabled='true' WHERE default_setting_subcategory='password_number' and default_setting_category='users';
UPDATE v_default_settings SET default_setting_value_value='true',                 default_setting_enabled='true' WHERE default_setting_subcategory='password_uppercase' and default_setting_category='users';
UPDATE v_default_settings SET default_setting_value_value='true',                 default_setting_enabled='true' WHERE default_setting_subcategory='enabled' and default_setting_category='provision';
UPDATE v_default_settings SET default_setting_value_value='5080',                 default_setting_enabled='true' WHERE default_setting_subcategory='line_sip_port' and default_setting_category='provision';
UPDATE v_default_settings SET default_setting_value_value='5',                    default_setting_enabled='true' WHERE default_setting_subcategory='password_length' and default_setting_category='voicemail';

;Yealink Provisioning
UPDATE v_default_settings SET default_setting_value_value='+1', default_setting_enabled='true' WHERE default_setting_subcategory='yealink_time_zone'   and default_setting_category='provision';
UPDATE v_default_settings SET default_setting_value_value='5',  default_setting_enabled='true' WHERE default_setting_subcategory='yealink_date_format' and default_setting_category='provision';
UPDATE v_default_settings SET default_setting_value_value='1',  default_setting_enabled='true' WHERE default_setting_subcategory='yealink_time_format' and default_setting_category='provision';
UPDATE v_default_settings SET default_setting_value_value='2',  default_setting_enabled='true' WHERE default_setting_subcategory='yealink_summer_time' and default_setting_category='provision';
UPDATE v_default_settings SET default_setting_value_value='Netherlands(Amsterdam)', default_setting_enabled='true' WHERE default_setting_subcategory='yealink_time_zone_name' and default_setting_category='provision';
UPDATE v_default_settings SET default_setting_value_value='Netherlands',  default_setting_enabled='true' WHERE default_setting_subcategory='yealink_voice_tone_country' and default_setting_category='provision';
UPDATE v_default_settings SET default_setting_value_value='1',  default_setting_enabled='true' WHERE default_setting_subcategory='yealink_remote_phonebook_enable' and default_setting_category='provision';

UPDATE v_default_settings SET default_setting_value_value='admin', default_setting_enabled='true' WHERE default_setting_subcategory='admin_name' and default_setting_category='provisioning';
UPDATE v_default_settings SET default_setting_value_value=array_to_string(array(select substr('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789',((random()*(62-1)+1)::integer),1) from generate_series(1,20)),''), default_setting_enabled='true' WHERE default_setting_subcategory='admin_password' and default_setting_category='provisioning';

;sip profiles
UPDATE v_sip_profile_settings sps SET sip_profile_setting_value ='5060', sip_profile_setting_enabled='true' FROM v_sip_profiles sp WHERE sp.sip_profile_uuid = sps.sip_profile_uuid and sps.sip_profile_setting_name='sip-port' and sp.sip_profile_name='external';
UPDATE v_sip_profile_settings sps SET sip_profile_setting_value ='5061', sip_profile_setting_enabled='true' FROM v_sip_profiles sp WHERE sp.sip_profile_uuid = sps.sip_profile_uuid and sps.sip_profile_setting_name='tls-sip-port' and sp.sip_profile_name='external';
UPDATE v_sip_profile_settings sps SET sip_profile_setting_value ='5080', sip_profile_setting_enabled='true' FROM v_sip_profiles sp WHERE sp.sip_profile_uuid = sps.sip_profile_uuid and sps.sip_profile_setting_name='sip-port' and sp.sip_profile_name='internal';
UPDATE v_sip_profile_settings sps SET sip_profile_setting_value ='5081', sip_profile_setting_enabled='true' FROM v_sip_profiles sp WHERE sp.sip_profile_uuid = sps.sip_profile_uuid and sps.sip_profile_setting_name='tls-sip-port' and sp.sip_profile_name='internal';
UPDATE v_vars SET var_value='true', var_enabled='true' WHERE var_name='external_ssl_enable';
UPDATE v_vars SET var_value='true', var_enabled='true' WHERE var_name='internal_ssl_enable';



UPDATE v_default_settings SET default_setting_value_value='', default_setting_enabled='true' WHERE default_setting_subcategory='' and default_setting_category='';
UPDATE v_default_settings SET default_setting_value_value='', default_setting_enabled='true' WHERE default_setting_subcategory='' and default_setting_category='';
UPDATE v_default_settings SET default_setting_value_value='', default_setting_enabled='true' WHERE default_setting_subcategory='' and default_setting_category='';
UPDATE v_default_settings SET default_setting_value_value='', default_setting_enabled='true' WHERE default_setting_subcategory='' and default_setting_category='';
UPDATE v_default_settings SET default_setting_value_value='', default_setting_enabled='true' WHERE default_setting_subcategory='' and default_setting_category='';
UPDATE v_default_settings SET default_setting_value_value='', default_setting_enabled='true' WHERE default_setting_subcategory='' and default_setting_category='';
UPDATE v_default_settings SET default_setting_value_value='', default_setting_enabled='true' WHERE default_setting_subcategory='' and default_setting_category='';
UPDATE v_default_settings SET default_setting_value_value='', default_setting_enabled='true' WHERE default_setting_subcategory='' and default_setting_category='';
UPDATE v_default_settings SET default_setting_value_value='', default_setting_enabled='true' WHERE default_setting_subcategory='' and default_setting_category='';

