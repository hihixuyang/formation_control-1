  update_states_timer = evalin('base', 'update_states_timer');
  pos_loop = evalin('base', 'pos_loop');
  n = evalin('base', 'n');
  
  for i = 1 : 1 : n
    force_matrix(1,7,i) = 0;
    force_matrix(2,7,i) = 0;
  end
  
assignin('base', 'force_matrix', force_matrix);  % gercek dunyadaki hiz referanslarini sifirlayalim
udp_send

stop(update_states_timer);
stop(pos_loop);

%offline simulation isleri
set_imaginary_agents;

t = cputime;
offline_set_inside_outside;
offline_set_intermember_forces;
offline_set_attraction_forces;
offline_set_repulsion_forces;
offline_set_total_force;
offline_dt = cputime - t
assignin('base', 'offline_dt', offline_dt);
run_offline_dynamics;

%offline simulation isleri

