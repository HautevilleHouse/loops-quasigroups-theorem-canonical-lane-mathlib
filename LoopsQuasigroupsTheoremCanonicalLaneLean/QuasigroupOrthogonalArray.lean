import HautevilleHouse.LoopsQuasigroupsTheoremCanonicalLaneLean.LagrangeTheoremForLoops

/-!
# Quasigroup Orthogonal Array Package
-/

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure QuasigroupOrthogonalArrayPackage (A : LoopQuasigroupAdmittedObject) where
  arraySize : ℕ
  latinProperty : Prop
  orthogonalArrayExists : Prop
  correspondenceProof : Prop

structure QuasigroupOrthogonalArrayEvidence (A : LoopQuasigroupAdmittedObject)
    (Q : QuasigroupOrthogonalArrayPackage A) where
  latinPropertyClosed : Q.latinProperty
  orthogonalArrayExistsClosed : Q.orthogonalArrayExists
  correspondenceProofClosed : Q.correspondenceProof

def QuasigroupOrthogonalArrayClosed (A : LoopQuasigroupAdmittedObject)
    (Q : QuasigroupOrthogonalArrayPackage A) : Prop :=
  Q.latinProperty ∧ Q.orthogonalArrayExists ∧ Q.correspondenceProof

theorem quasigroup_orthogonal_array_closed_from_evidence (A : LoopQuasigroupAdmittedObject)
    (Q : QuasigroupOrthogonalArrayPackage A) (E : QuasigroupOrthogonalArrayEvidence A Q) :
    QuasigroupOrthogonalArrayClosed A Q := by
  exact And.intro E.latinPropertyClosed
    (And.intro E.orthogonalArrayExistsClosed E.correspondenceProofClosed)

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse
