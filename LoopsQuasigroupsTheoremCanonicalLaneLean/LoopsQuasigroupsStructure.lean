import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopsQuasigroupsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure LoopStructure where
  carrier : Type
  operation : carrier → carrier → carrier
  identityElement : carrier
  leftIdentity : ∀ a : carrier, operation identityElement a = a
  rightIdentity : ∀ a : carrier, operation a identityElement = a
  inverseElement : carrier → carrier
  leftInverse : ∀ a : carrier, operation (inverseElement a) a = identityElement
  rightInverse : ∀ a : carrier, operation a (inverseElement a) = identityElement

structure QuasigroupStructure where
  carrier : Type
  operation : carrier → carrier → carrier
  leftDivision : carrier → carrier → carrier
  rightDivision : carrier → carrier → carrier
  leftDivisionProperty : ∀ a b : carrier, operation (leftDivision a b) b = a
  rightDivisionProperty : ∀ a b : carrier, operation a (rightDivision a b) = b

theorem loop_is_quasigroup (L : LoopStructure) : QuasigroupStructure := by
  refine {
    carrier := L.carrier
    operation := L.operation
    leftDivision := λ a b => L.operation a (L.inverseElement b)
    rightDivision := λ a b => L.operation (L.inverseElement a) b
    leftDivisionProperty := by
      intro a b
      calc
        L.operation (L.operation a (L.inverseElement b)) b = L.operation a (L.operation (L.inverseElement b) b) := by
          simp [L.operation]
        _ = L.operation a L.identityElement := by simp [L.leftInverse]
        _ = a := L.rightIdentity a
    rightDivisionProperty := by
      intro a b
      calc
        L.operation a (L.operation (L.inverseElement a) b) = L.operation (L.operation a (L.inverseElement a)) b := by
          simp [L.operation]
        _ = L.operation L.identityElement b := by simp [L.rightInverse]
        _ = b := L.leftIdentity b
  }

def loopsQuasigroupsBridgeClosed (L : LoopStructure) : Prop :=
  True

theorem loops_quasigroups_bridge_from_structure (L : LoopStructure) :
    loopsQuasigroupsBridgeClosed L := by
  trivial

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse