set.seed(128)

edward <- rnorm(20, mean = 180, sd = 5)  # Edward's measurements
hugo <- rnorm(20, mean = 180, sd = 7)      # Hugo's measurements
lucy <- rnorm(20, mean = 180, sd = 3)   #Lucy's measurements

# test if Edward's measurement of the mean is close to the true mean
edward_test<- function(edward, hugo, lucy) {
  mean_edward <- mean(edward)
  true_mean <- 180
  return(abs(mean_edward - true_mean) < 2)
}
edward_test <- edward_test(edward, hugo, lucy)
c("Scenario 1 Result:", edward_test)

# test if Hugo's measurement is within the standard deviation range

hugo_test <- function(edward, hugo, lucy) {
  sd_hugo <- sd(hugo)
  return(sd_hugo > 5 && sd_hugo < 9)
}
hugo_test<- hugo_test(edward, hugo, lucy)
c("Scenario 2 Result:", hugo_test)

# test if Lucy's measurement of the mean is close to the true mean
lucy_test <- function(edward, hugo, lucy) {
  mean_lucy <- mean(lucy)
  true_mean <- 180
  return(abs(mean_lucy - true_mean) < 2)
}
lucy_test <- lucy_test(edward, hugo, lucy)
c("Scenario 3 Result:", lucy_test)
