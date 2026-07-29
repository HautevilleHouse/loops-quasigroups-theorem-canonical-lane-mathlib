import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsTheoremCanonicalLaneLean

structure Quasigroup where
  carrier : Type u
  mul : carrier → carrier → carrier

structure Loop extends Quasigroup where
  identity : carrier
  leftNeutral : ∀ a : carrier, mul identity a = a
  rightNeutral : ∀ a : carrier, mul a identity = a
  leftInverse : ∀ a : carrier, ∃ b : carrier, mul b a = identity
  rightInverse : ∀ a : carrier, ∃ b : carrier, mul a b = identity

structure MoufangLoop extends Loop where
  moufangIdentity : ∀ a b c : carrier, mul (mul a (mul b c)) a = mul (mul a b) (mul c a)

structure BolLoop extends Loop where
  bolIdentity : ∀ a b c : carrier, mul a (mul b (mul a c)) = mul (mul a b) (mul a c)

end LoopsQuasigroupsTheoremCanonicalLaneLean
end HautevilleHouse