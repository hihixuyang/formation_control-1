function [cost route] = calc_cost_route(pstart, pgoal, agent_radius, motion_1_x,motion_1_y,motion_2_x,motion_2_y,motion_3_x,motion_3_y)
pstart = [0 0];
pgoal  = [5 5];
agent_radius = 5;

line_segment = [];
vertice_matrix = [1 pstart(1) pstart(2) 0];
vertice_matrix = [vertice_matrix ; [2 pgoal(1) pgoal(2) -1]];
vertice_count = 3;
line_count = 1;

[conv_shape_x conv_shape_y] = calc_convex_shape(motion_1_x, motion_1_y);
[total_shape_x, total_shape_y] = calc_minkowski_sum( conv_shape_x, conv_shape_y, agent_radius);
[minkowski_shape_x minkowski_shape_y] = calc_convex_shape(total_shape_x, total_shape_y);
%plot(minkowski_shape_x, minkowski_shape_y,'g');
%hold on
%plot(motion_1_x, motion_1_y,'r')
initial_vertex = vertice_count;
for i = 1 : 1 :  length(minkowski_shape_x)
    end_point1 = vertice_count;
    end_point2 = vertice_count + 1 ;
    if(end_point2 > length(minkowski_shape_x) + initial_vertex - 1)
        end_point2 = initial_vertex;
    end
  line_segment = [line_segment; [line_count end_point1 end_point2 1]];
  vertice_matrix = [vertice_matrix; [vertice_count minkowski_shape_x(i) minkowski_shape_y(i) 1]];
  vertice_count =  vertice_count + 1;
  line_count =  line_count + 1;
end



[conv_shape_x conv_shape_y] = calc_convex_shape(motion_2_x, motion_2_y);
[total_shape_x, total_shape_y] = calc_minkowski_sum( conv_shape_x, conv_shape_y, agent_radius);
[minkowski_shape_x minkowski_shape_y] = calc_convex_shape(total_shape_x, total_shape_y);
initial_vertex = vertice_count;
%plot(minkowski_shape_x, minkowski_shape_y,'g');
%hold on
%plot(motion_2_x, motion_2_y,'r')
for i = 1 : 1 :  length(minkowski_shape_x)
    end_point1 = vertice_count;
    end_point2 = vertice_count + 1 ;
    if(end_point2 > length(minkowski_shape_x) + initial_vertex - 1)
        end_point2 = initial_vertex;
    end
  line_segment = [line_segment; [line_count end_point1 end_point2 2]];
  vertice_matrix = [vertice_matrix; [vertice_count minkowski_shape_x(i) minkowski_shape_y(i) 2]];
  vertice_count =  vertice_count + 1;
  line_count =  line_count + 1;
end



[conv_shape_x conv_shape_y] = calc_convex_shape(motion_3_x, motion_3_y);
[total_shape_x, total_shape_y] = calc_minkowski_sum( conv_shape_x, conv_shape_y, agent_radius);
[minkowski_shape_x minkowski_shape_y] = calc_convex_shape(total_shape_x, total_shape_y);
initial_vertex = vertice_count;
%plot(minkowski_shape_x, minkowski_shape_y,'g');
%hold on
%plot(motion_3_x, motion_3_y,'r')
for i = 1 : 1 :  length(minkowski_shape_x)
    end_point1 = vertice_count;
    end_point2 = vertice_count + 1 ;
    if(end_point2 > length(minkowski_shape_x) + initial_vertex - 1)
        end_point2 = initial_vertex;
    end
  line_segment = [line_segment; [line_count end_point1 end_point2 3]];
  vertice_matrix = [vertice_matrix; [vertice_count minkowski_shape_x(i) minkowski_shape_y(i) 3]];
  vertice_count =  vertice_count + 1;
  line_count =  line_count + 1;
end

line_segment
vertice_matrix

 
 dummy = size(vertice_matrix);
 number_of_vertices = dummy(1);
 dummy = size(line_segment);
 number_of_lines = dummy(1);
 
 visibility_matrix = zeros(number_of_vertices,number_of_vertices);
for i = 1 : 1 : number_of_vertices
  array = visible_vertices(i,line_segment, vertice_matrix);
  visibility_matrix(i,array)  = 1;
end

for i = 1 : 1 : number_of_lines % obstacle lar uzerinde komsu kenarlari da line of sight a sokalim
  vertice_ind = line_segment(i,2);
  vertice_ind_2 = line_segment(i,3);
  visibility_matrix(vertice_ind,vertice_ind_2) = 1;
  visibility_matrix(vertice_ind_2,vertice_ind) = 1;
end


cost_matrix = [];
for i = 1 : 1 : number_of_vertices
 indexes = find(visibility_matrix(i,:) == 1);
 for j = 1 : 1 : length(indexes)
     %plot([vertice_matrix(i,2) vertice_matrix(indexes(j),2)], [vertice_matrix(i,3) vertice_matrix(indexes(j),3)])
     %hold on
     cost_matrix(i,indexes(j)) = norm([(vertice_matrix(i,2) - vertice_matrix(indexes(j),2)) (vertice_matrix(i,3) - vertice_matrix(indexes(j),3))]);
 end
 
end

[cost,route] = dijkstra(cost_matrix,1,2);
route  = flip(route);
%figure
%for i = 1 : 1 : length(route) -1
%  plot([vertice_matrix(route(i),2) vertice_matrix(route(i+1),2)], [vertice_matrix(route(i),3) vertice_matrix(route(i+1),3)])
%  hold on
%end
