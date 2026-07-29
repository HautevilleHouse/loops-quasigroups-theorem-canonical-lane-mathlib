import canonicalLaneMathlib.AdmissibleClass
import LoopsQuasigroupsTheoremCanonicalLaneLean.LoopsQuasigroupsDefinition

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure MoufangLoopPackage (L : LoopCarrier) where
  satisfiesMoufang : loopMoufangIdentity L
  alternative : Prop := ∀ x y : L.carrier, L.mul (L.mul x x) y = L.mul x (L.mul x y) ∧ L.mul x (L.mul y y) = L.mul (L.mul x y) y
  flexible : Prop := ∀ x y : L.carrier, L.mul (L.mul x y) x = L.mul x (L.mul y x)

def moufangLoopClosure (L : LoopCarrier) (M : MoufangLoopPackage L) : Prop :=
  M.satisfiesMoufang ∧ M.alternative ∧ M.flexible

theorem moufang_loop_closure_from_package (L : LoopCarrier) (M : MoufangLoopPackage L) : moufangLoopClosure L M :=
  And.intro M.satisfiesMoufang (And.intro M.alternative M.flexible)

theorem alternative_implies_flexible (L : LoopCarrier) (h : ∀ x y : L.carrier, L.mul (L.mul x x) y = L.mul x (L.mul x y) ∧ L.mul x (L.mul y y) = L.mul (L.mul x y) y) : ∀ x y : L.carrier, L.mul (L.mul x y) x = L.mul x (L.mul y x) :=
  by
    intro x y
    have h1 : L.mul (L.mul (L.mul x y) (L.mul x y)) x = L.mul (L.mul x y) (L.mul (L.mul x y) x) := (h (L.mul x y) x).1
    have h2 : L.mul (L.mul (L.mul x y) (L.mul x y)) x = L.mul (L.mul x (L.mul y (L.mul x y))) x := by
      calc
        L.mul (L.mul (L.mul x y) (L.mul x y)) x = L.mul (L.mul x (L.mul y (L.mul x y))) x := by
          simp [L.associativity]
        _ = L.mul (L.mul x (L.mul y (L.mul x y))) x := rfl
    sorry

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse