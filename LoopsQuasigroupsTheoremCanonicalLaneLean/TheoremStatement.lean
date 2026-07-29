import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure LoopQuasigroupSpace where
  carrier : Type
  mult : carrier → carrier → carrier
  ident : carrier
  leftInv : ∀ a : carrier, (∃ b : carrier, mult b a = ident)
  rightInv : ∀ a : carrier, (∃ b : carrier, mult a b = ident)

def LoopQuasigroupIsotopyTheoremStatement (L : LoopQuasigroupSpace) : Prop :=
  (∀ a b : L.carrier, ∃! x : L.carrier, L.mult a x = b) ∧
  (∀ a b : L.carrier, ∃! y : L.carrier, L.mult y a = b)

structure LoopQuasigroupAdmittedObject where
  space : LoopQuasigroupSpace
  loopQuasigroupConditions : LoopQuasigroupIsotopyTheoremStatement space
  conclusion : LoopQuasigroupIsotopyTheoremStatement space

noncomputable def LoopQuasigroupWitnessClosed (O : LoopQuasigroupAdmittedObject) : Prop :=
  O.loopQuasigroupConditions

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse