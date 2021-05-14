scenario = "Visual Working Memory";

no_logfile = false;
scenario_type = trials;

default_background_color = 128, 128, 128;
default_text_color = 255, 0, 255;
default_font_size = 18;  
active_buttons = 2;
button_codes = 1,2;
write_codes = true; 
pulse_width = 10;
pcl_file = "Visual Working Memory.pcl"; #pcl_file = "Auditory Working Memory_2.pcl"; has some more stuff in there that might not be needed but that we had in cuedboss
begin;


text{caption = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nNot in the set                                                                                 In the set"; font_size = 30; font_color = 200,200,200;  } in_out_text;
picture { text in_out_text; x = 0; y = 0; } in_out;
#picture { text {font_size=25; font="Arial"; caption ="s1 text"; font_color = 200,200,200;};x=0;y=0;} s1_text;
picture {
} default;
text{caption = "+"; font_size = 30; font_color = 200,200,200;  } cross_text;
picture { text cross_text; x = 0; y = 0; } cross;


trial{ #this is the first screen to prepare people 
  trial_duration = forever;        	# trial lasts until target
   trial_type = specific_response;  # button is pressed
   terminator_button = 1;   # left-mouse button
   picture {
		text {font_size=25; font="Arial"; caption ="PLEASE DOUBLE PRESS THE LEFT Ctrl TO START"; font_color = 200,200,200;};
      x=0;y=0;};
	code = "201 start recording";  
	port_code = 201; 
}start_trial;

trial{ #this is the s1 trial 
  trial_duration = 3000;        	# trial lasts 3sec
	stimulus_event {
		picture {	
			text {	
				caption = "!";
				font_size = 25;
				text_align = align_center;
				font_color = 0,0,0;
			}s1_txt;
			x = 256; y = -256;
		}pic_s1; 
		port_code = 10;  
	}s1_event;
}s1_trial;

trial {
trial_duration = 1000;
	stimulus_event {
		picture cross;
	}event_isi;
} isi_trial;

trial{ #this is the s1 trial 
  trial_duration = 300;        	
	stimulus_event {
		picture {	
			text {	
				caption = "!";
				font_size = 25;
				text_align = align_center;
				font_color = 0,0,0;
			}s2_txt;
			x = 256; y = -256;
		}pic_s2; 
		port_code = 11;  
	}s2_event;
}s2_trial;

trial { 
	trial_type = first_response; #so that ITI stops after any response
    trial_duration = 1500; #set to change between 7000-9000ms   
     picture in_out;  
    code = "iti";
    target_button = 2; #so that a hit shows up if you press left button
} iti_trial_same;

trial { 
	trial_type = first_response; #so that ITI stops after any response
    trial_duration = 1500;   
     picture in_out;  
    code = "iti";
    target_button = 1; #so that a hit shows up if press right button
} iti_trial_not_same;


trial {
trial_duration = 2000;
	stimulus_event {
		nothing{};
		code = "end";  
		port_code = 200;  
		time = 0;
   } event_end;  
} end_trial;