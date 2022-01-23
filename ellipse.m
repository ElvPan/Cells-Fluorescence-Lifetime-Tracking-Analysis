function [e_mask]=ellipse(ix,iy,cx,cy,a,b)

% By M. Bach
% Draws a circle with centre cx,cy in image ix,iy with radius r
% if (a>=1 || b>=1)
% % [x,y]=meshgrid(-(cx-1):(ix-cx),-(cy-1):(iy-cy));
% % e_mask=(((x/a).^2+(y/b).^2)<=1);
% [x,y]=meshgrid(0:1/(a*2):ix,0:1/(b*2):iy);
% e_mask=((((x-cx)/a).^2+((y-cy)/b).^2)<=1);
% e_mask=e_mask(1:size(e_mask,1)-1,1:size(e_mask,2)-1);
% else

[x,y]=meshgrid(0:ix,0:iy);
%[x,y]=meshgrid(-ix/2:(ix/2),-iy/2:iy/2);
e_mask=((((x-cx)/a).^2+((y-cy)/b).^2)<=1);
e_mask=e_mask(1:size(e_mask,1)-1,1:size(e_mask,2)-1);
%  end