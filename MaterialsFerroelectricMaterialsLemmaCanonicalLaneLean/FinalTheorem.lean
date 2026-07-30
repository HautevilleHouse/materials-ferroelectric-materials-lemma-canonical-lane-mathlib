import MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

def ConstrainedFerroelectricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ferroelectric_endgame (A : AdmissibleClass) :
    ConstrainedFerroelectricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse