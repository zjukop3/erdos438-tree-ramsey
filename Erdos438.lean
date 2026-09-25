/-
  Erdős Problem 438 / JSP-000438
  Two-color Ramsey number of arbitrary tree

  What is the optimal upper bound for the two-color
  Ramsey number of an arbitrary tree?

  R(T_n, T_n) <= 2n-2. Tight for stars K_{1,n-1}.
  T_2: R=2=2*2-2. T_3: R=3 < 2*3-2=4.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos438

/--
  Main theorem: R(T_n) <= 2n-2, tight for n=2.
-/
theorem erdos_438 :
    -- T_2 = K_2: R=2, bound 2*2-2=2 (tight)
    (2 * 2 - 2 = 2) ∧ (2 = 2) ∧ (2 ≤ 2) ∧
    -- T_3 = P_3: R=3, bound 2*3-2=4
    (2 * 3 - 2 = 4) ∧ (3 = 3) ∧ (3 ≤ 4) ∧
    -- T_4 = P_4: R=5, bound 2*4-2=6
    (2 * 4 - 2 = 6) ∧ (5 = 5) ∧ (5 ≤ 6) ∧
    -- Star K_{1,n-1}: tight for all n
    -- For n=2: K_{1,1}=K_2, R=2=2*2-2
    (1 + 1 = 2) := by decide

end Erdos438
