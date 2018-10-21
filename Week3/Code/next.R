##Example of use of next.

for (i in 1:10) {
  if ((i %% 2) == 0)
    next
  print(i)
}