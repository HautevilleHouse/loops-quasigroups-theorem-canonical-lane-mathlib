import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure MoufangLoopStructure where
  carrier : Type u
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  mulAssoc : ∀ a b c : carrier, (mul (mul a b) c) = mul a (mul b c)
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a
  mulLeftInv : ∀ a : carrier, mul (inv a) a = one
  mulRightInv : ∀ a : carrier, mul a (inv a) = one
  moufangIdentity : ∀ a b c : carrier, mul (mul a (mul b c)) a = mul (mul a b) (mul c a)

structure MoufangLoopEvidence (M : MoufangLoopStructure) where
  carrierNonempty : Nonempty M.carrier
  mulClosed : ∀ a b : M.carrier, M.mul a b = M.mul a b   -- trivial

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse