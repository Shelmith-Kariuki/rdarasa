#' Title counter
#'
#' @param dat A dataset
#'
#' @param var A categorical variable
#'
#' @return A small dataset that contains counts of each category
#'
#' @export
#'
#' @import dplyr
#' @import ggplot2
#' @importFrom magrittr %>%
#'
#' @examples
#'
#' counter(infert, "education")
#'
counter <- function(dat, var){
  tab <- dat %>%
         group_by_(.dots = var) %>%
         count()
  return(tab)
}

