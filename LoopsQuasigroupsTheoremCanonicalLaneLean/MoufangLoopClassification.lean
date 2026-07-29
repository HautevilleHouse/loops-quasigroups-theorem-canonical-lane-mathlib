import HautevilleHouse.LoopsQuasigroupsTheoremCanonicalLaneLean.LoopTheoryAdmissibleClass

/-!
# Moufang Loop Classification Package
-/

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure MoufangLoopPackage (A : LoopQuasigroupAdmittedObject) where
  satisfiesMoufangIdentities : Prop
  alternativeProperties : Prop
  diassociative : Prop
  classificationResult : Prop

structure MoufangLoopEvidence (A : LoopQuasigroupAdmittedObject) (M : MoufangLoopPackage A) where
  satisfiesMoufangIdentitiesClosed : M.satisfiesMoufangIdentities
  alternativePropertiesClosed : M.alternativeProperties
  diassociativeClosed : M.diassociative
  classificationResultClosed : M.classificationResult

def MoufangLoopClosed (A : LoopQuasigroupAdmittedObject) (M : MoufangLoopPackage A) : Prop :=
  M.satisfiesMoufangIdentities ∧ M.alternativeProperties ∧ M.diassociative ∧ M.classificationResult

theorem moufang_loop_closed_from_evidence (A : LoopQuasigroupAdmittedObject) (M : MoufangLoopPackage A)
    (E : MoufangLoopEvidence A M) : MoufangLoopClosed A M := by
  exact And.intro E.satisfiesMoufangIdentitiesClosed
    (And.intro E.alternativePropertiesClosed
      (And.intro E.diassociativeClosed E.classificationResultClosed))

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse
