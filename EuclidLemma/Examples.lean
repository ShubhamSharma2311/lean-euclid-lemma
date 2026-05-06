import EuclidLemma.Basic

namespace EuclidLemma

example : 7 ∣ 3 ∨ 7 ∣ 14 := euclid (by norm_num) (by norm_num : 7 ∣ 3 * 14)

example : 5 ∣ 10 := dvd_of_dvd_pow (n := 3) (by norm_num) (by norm_num)

end EuclidLemma
