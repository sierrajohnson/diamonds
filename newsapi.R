library(httr2)
library(dplyr)
req <- request("https://newsapi.org/v2/everything") %>%
  req_url_query(
    q = '`"PFAS"`',
    from = Sys.Date() - 1,
    pageSize = 10,
    apiKey = Sys.getenv("NEWS_API_KEY")
  )

cat("Found secret.")

resp <- req_perform(req)
resp_body_json(resp)

cat("Script complete.")
