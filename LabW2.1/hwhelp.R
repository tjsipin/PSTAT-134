dat %>% 
  mutate_at(.vars = 1:3,
            .funs = gsub,
            pattern = "\\*",
            replacement = "") %>%
  mutate_at(.vars = 1:3,
            .funs = as.numeric)