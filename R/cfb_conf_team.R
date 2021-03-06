#' Lists all teams in conference
#' Current support only for D1
#'
#'
#' @param conference Conference (Select a valid conference, D1 football)
#' @keywords internal
#' @importFrom assertthat "assert_that"
#' @importFrom jsonlite "fromJSON"
#' @export
#' @examples
#'

cfb_conf_team <- function(conference) {
  ### check whether conference exists
  base_url <-
    "https://api.collegefootballdata.com/teams?conference="
  if(nchar(conference)==3){
    assert_that(conference  %in%  cfb_conf_types_df$abbreviation,msg = "Incorrect conference abbreivation, potential misspelling")
    url <- paste0(base_url, conference)
  }else{
    assert_that(conference  %in%  cfb_conf_types_df$short_name,msg="Incorrect conference selection, potential misspelling")
    ind <- which(conference == cfb_conf_types_df$short_name)
    url <- paste0(base_url,conf_types_df$abbreviation[ind])
  }
  df <- fromJSON(url)
  return(df)
}


