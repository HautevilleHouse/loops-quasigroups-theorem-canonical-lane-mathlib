import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure LoopQuasigroupAdmittedObject where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  leftDivision : carrier → carrier → carrier
  rightDivision : carrier → carrier → carrier
  leftCancellation : ∀ a b : carrier, a * (a \ b) = b
  rightCancellation : ∀ a b : carrier, (b / a) * a = b
  identityElement : carrier
  identityLeft : ∀ a : carrier, identityElement * a = a
  identityRight : ∀ a : carrier, a * identityElement = a
  conclusion : True

structure LoopsQuasigroupsAdmissibleClass where
  object : LoopQuasigroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : LoopsQuasigroupsAdmissibleClass) : Prop :=
  let witnessClosed : Prop := A.object.conclusion
  witnessClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse
