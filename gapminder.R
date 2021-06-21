library (gapminder)
View (gapminder)
gm <- gapminder 
year <- gm %>% filter (year == 1982)
ggplot (data = year,
        aes (x = lifeExp)) + 
  geom_histogram()
asiapop <- gm %>% filter (continent == 'Asia')          
ggplot (data = asiapop,
        aes (x = year,
             y = pop,
             color = country)) +
  geom_line (size = 3, alpha = 0.5) + scale_y_log10 () +
  theme (legend.position = 'bottom') + labs (x = 'Year', y = 'Population Rate', title = 'Population Rates in Asia')
europe <- gm %>% filter (continent == 'Europe', year == 2002)
ggplot (data = europe,
        aes (x = country,
             y = gdpPercap,
             color = country)) +
  geom_bar (stat = 'identity', fill = 'darkblue', alpha = 0.2)
the_nineties <- gm %>%
  mutate (start_num = substr (year, 1, 3)) %>% filter (start_num == 199)
