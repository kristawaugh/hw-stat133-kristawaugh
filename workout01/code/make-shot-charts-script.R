###################################
Title: NBA Shot Charts 
Author: Krista Waugh 
Description: Plotting shots of Golden State Warriors players, Klay Thompson, Stephen Curry, Andre Iguodala, Draymond Green, and Kevin Durant 
Inputs: 
Outputs: 
##################################

library(jpeg)
library(grid)

court_file <- "../images/nba-court.jpg"

court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

klay_shot_chart <- ggplot(data = thompson) + 
  annotation_custom((court_image), -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') + 
  theme_minimal()


stephen_shot_chart <- ggplot(data = curry) + 
  annotation_custom((court_image), -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') + 
  theme_minimal()

kevin_shot_chart <- ggplot(data = durant) + 
  annotation_custom((court_image), -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') + 
  theme_minimal()

draymond_shot_chart <- ggplot(data = green) + 
  annotation_custom((court_image), -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') + 
  theme_minimal()

andre_shot_chart <- ggplot(data = iguodala) + 
  annotation_custom((court_image), -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') + 
  theme_minimal()

ggsave("../images/klay-thompson-shot-chart.pdf", width = 6.5, height = 5)
ggsave("../images/stephen_curry-shot-chart.pdf", width = 6.5, height = 5)
ggsave("../images/andre-iguodala-shot-chart.pdf", width = 6.5, height = 5)
ggsave("../images/kevin-durant-shot-chart.pdf", width = 6.5, height = 5)
ggsave("../images/draymond-green-shot-chart.pdf", width = 6.5, height = 5)
