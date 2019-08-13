# https://dhicks.github.io/2018-10-10-did/

xfun::pkg_attach2('haven', 'skimr', 'tidyverse')

dataf = haven::read_dta('data/eitc.dta')
skim(dataf, work, year, children) %>% 
  skimr::kable(digits = 0)

dataf = dataf %>%
  mutate(post93 = year >= 1994, 
         anykids = children >= 1)
