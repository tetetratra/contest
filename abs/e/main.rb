p [*0..gets.to_i].map(&:*.to_proc.curry(2).(500)).product(
  [*0..gets.to_i].map(&:*.to_proc.curry(2).(100)),
  [*0..gets.to_i].map(&:*.to_proc.curry(2).(50))
).map(&:sum).count(gets.to_i)

