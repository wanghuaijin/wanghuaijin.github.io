x1 = linspace(-1,0,1000);
x2 = linspace(0,1,1000);

plot([x1,x1,x2,x2],[x1+1,-x1-1,-x2+1,x2-1],'+');

subplot(2,2,1);
hold on;
plot(x1, x1+1, 'k-','linewidth',1.2);
plot(x1, -x1-1, 'k-','linewidth',1.2);
plot(x2, -x2+1, 'k-','linewidth',1.2);
plot(x2, x2-1, 'k-','linewidth',1.2);
% 绘制 X 轴
line([-1.25, 1.25], [0, 0], 'Color', 'k', 'LineWidth', 2);
% 绘制 Y 轴
line([0, 0], [-1.25, 1.25], 'Color', 'k', 'LineWidth', 2);
% 添加箭头
quiver(1.25, 0, 0.25, 0, 'Color', 'k', 'MaxHeadSize', 2, 'LineWidth', 2,'AutoScale', 'off');
quiver(0, 1.25, 0, 0.25, 'Color', 'k', 'MaxHeadSize', 2, 'LineWidth', 2, 'AutoScale', 'off');
text(1.55, 0, {'$x_1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'baseline', 'HorizontalAlignment', 'left');
text(0, 1.55, {'$x_2$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'baseline', 'HorizontalAlignment', 'right');
text(1, -0.05, {'$1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(-1, -0.05, {'$-1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(-0.05, 1, {'$1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(-0.05, -1, {'$-1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(0, -1.7, {'$L_1$-norm'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center');
axis equal;
axis off;
hold off;


subplot(2,2,2);
hold on;
plot(x1, sqrt(1-x1.^2), 'k-','linewidth',1.2);
plot(x1, -sqrt(1-x1.^2), 'k-','linewidth',1.2);
plot(x2, sqrt(1-x2.^2), 'k-','linewidth',1.2);
plot(x2, -sqrt(1-x2.^2), 'k-','linewidth',1.2);
% 绘制 X 轴
line([-1.25, 1.25], [0, 0], 'Color', 'k', 'LineWidth', 2);
% 绘制 Y 轴
line([0, 0], [-1.25, 1.25], 'Color', 'k', 'LineWidth', 2);
% 添加箭头
quiver(1.25, 0, 0.25, 0, 'Color', 'k', 'MaxHeadSize', 2, 'LineWidth', 2,'AutoScale', 'off');
quiver(0, 1.25, 0, 0.25, 'Color', 'k', 'MaxHeadSize', 2, 'LineWidth', 2, 'AutoScale', 'off');
text(1.55, 0, {'$x_1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'baseline', 'HorizontalAlignment', 'left');
text(0, 1.55, {'$x_2$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'baseline', 'HorizontalAlignment', 'right');
text(1.2, -0.05, {'$1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(-1, -0.05, {'$-1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(-0.05, 1, {'$1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(-0.05, -1, {'$-1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(0, -1.7, {'$L_2$-norm'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center');
axis equal;
axis off;
hold off;




subplot(2,2,3);
p = 1/2;
hold on;
plot(x1, (1-abs(x1).^p).^(1/p), 'k-','linewidth',1.2);
plot(x1, -(1-abs(x1).^p).^(1/p), 'k-','linewidth',1.2);
plot(x2, (1-abs(x2).^p).^(1/p), 'k-','linewidth',1.2);
plot(x2, -(1-abs(x2).^p).^(1/p), 'k-','linewidth',1.2);
% 绘制 X 轴
line([-1.25, 1.25], [0, 0], 'Color', 'k', 'LineWidth', 2);
% 绘制 Y 轴
line([0, 0], [-1.25, 1.25], 'Color', 'k', 'LineWidth', 2);
% 添加箭头
quiver(1.25, 0, 0.25, 0, 'Color', 'k', 'MaxHeadSize', 2, 'LineWidth', 2,'AutoScale', 'off');
quiver(0, 1.25, 0, 0.25, 'Color', 'k', 'MaxHeadSize', 2, 'LineWidth', 2, 'AutoScale', 'off');
text(1.55, 0, {'$x_1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'baseline', 'HorizontalAlignment', 'left');
text(0, 1.55, {'$x_2$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'baseline', 'HorizontalAlignment', 'right');
text(1.2, -0.05, {'$1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(-1, -0.05, {'$-1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(-0.05, 1, {'$1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(-0.05, -1, {'$-1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(0, -1.7, {'$L_3$-norm'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center');
axis equal;
axis off;
hold off;



subplot(2,2,4);
hold on;
plot(x1, ones(size(x1)), 'k-','linewidth',1.2);
plot(x1, -ones(size(x1)), 'k-','linewidth',1.2);
plot(x2, ones(size(x2)), 'k-','linewidth',1.2);
plot(x2, -ones(size(x2)), 'k-','linewidth',1.2);
plot(-ones(size(x1)),x1, 'k-','linewidth',1.2);
plot(-ones(size(x1)),-x1, 'k-','linewidth',1.2);
plot(ones(size(x2)),x2, 'k-','linewidth',1.2);
plot(ones(size(x2)),-x2, 'k-','linewidth',1.2);

% 绘制 X 轴
line([-1.25, 1.25], [0, 0], 'Color', 'k', 'LineWidth', 2);
% 绘制 Y 轴
line([0, 0], [-1.25, 1.25], 'Color', 'k', 'LineWidth', 2);
% 添加箭头
quiver(1.25, 0, 0.25, 0, 'Color', 'k', 'MaxHeadSize', 2, 'LineWidth', 2,'AutoScale', 'off');
quiver(0, 1.25, 0, 0.25, 'Color', 'k', 'MaxHeadSize', 2, 'LineWidth', 2, 'AutoScale', 'off');
text(1.55, 0, {'$x_1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'baseline', 'HorizontalAlignment', 'left');
text(0, 1.55, {'$x_2$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'baseline', 'HorizontalAlignment', 'right');
text(1.2, -0.05, {'$1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(-1, -0.06, {'$-1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(-0.05, 1, {'$1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(-0.05, -1, {'$-1$'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(0, -1.7, {'$L_\infty$-norm'},'interpreter','LaTex' , 'FontSize', 16, 'Color', 'k', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center');
axis equal;
axis off;
hold off;

