# https://dhicks.github.io/2018-10-10-did/

xfun::pkg_attach2('haven', 'skimr')

dataf = haven::read_dta('data/eitc.dta')
skim(dataf, work, year, children) %>% 
  skimr::kable(digits = 0)
