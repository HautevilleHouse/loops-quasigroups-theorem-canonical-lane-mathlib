import HautevilleHouse.LoopsQuasigroupsTheoremCanonicalLaneLean.MoufangLoopClassification

/-!
# Lagrange Theorem for Loops Package
-/

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure LagrangeTheoremPackage (A : LoopQuasigroupAdmittedObject) (M : MoufangLoopPackage A) where
  subloopOrderDivides : Prop
  cosetDecomposition : Prop
  lagrangeTheoremStatement : Prop

structure LagrangeTheoremEvidence (A : LoopQuasigroupAdmittedObject) (M : MoufangLoopPackage A)
    (L : LagrangeTheoremPackage A M) where
  subloopOrderDividesClosed : L.subloopOrderDivides
  cosetDecompositionClosed : L.cosetDecomposition
  lagrangeTheoremStatementClosed : L.lagrangeTheoremStatement

def LagrangeTheoremClosed (A : LoopQuasigroupAdmittedObject) (M : MoufangLoopPackage A)
    (L : LagrangeTheoremPackage A M) : Prop :=
  L.subloopOrderDivides ∧ L.cosetDecomposition ∧ L.lagrangeTheoremStatement

theorem lagrange_theorem_closed_from_evidence (A : LoopQuasigroupAdmittedObject)
    (M : MoufangLoopPackage A) (L : LagrangeTheoremPackage A M)
    (E : LagrangeTheoremEvidence A M L) : LagrangeTheoremClosed A M L := by
  exact And.intro E.subloopOrderDividesClosed
    (And.intro E.cosetDecompositionClosed E.lagrangeTheoremStatementClosed)

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse
