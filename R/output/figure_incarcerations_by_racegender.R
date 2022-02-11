# Builds a bar graph with total arrests on the y axis and race/gender on the
# x axis. Refer to my presentation on graphing for more detail.

read_csv(here("data/NLSY97_clean.csv")) %>%
  group_by(race, gender) %>%
  summarize(incarcerated_pct = sum(incarcerated)/n()*100) %>%
  ggplot(aes(race, incarcerated_pct, fill = gender)) +
    geom_bar(stat = "identity", position = "dodge") +
    labs(
      x = "Race", 
      y = "Percent Incarcerated", 
      fill = "Gender",
      title = "Percent Incarcerated in 2002 by Race and Gender",
      subtitle = "Minimum one month incarcerated") +
    theme_minimal() +
    scale_fill_economist()

ggsave(here("figures/incarcerationpct_by_racegender.png"), width=8, height=4.5)

