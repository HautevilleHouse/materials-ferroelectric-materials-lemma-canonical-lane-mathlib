import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramLandau where
  freeEnergyFunctional : ℝ → ℝ
  orderParameter : ℝ
  temperature : ℝ
  polarizationExpansion : ℝ → ℝ
  criticalTemperature : ℝ
  phaseTransitionOrder : String
  spontaneousPolarizationCurve : ℝ → ℝ

def LandauFreeEnergy (L : PhaseDiagramLandau) : ℝ := L.freeEnergyFunctional L.orderParameter

theorem landau_free_energy_minimization (L : PhaseDiagramLandau) :
    LandauFreeEnergy L = 0 := by
  sorry

def PhaseDiagramLandauClosed (L : PhaseDiagramLandau) : Prop :=
  L.criticalTemperature > 0 ∧ L.phaseTransitionOrder = "first" ∨ L.phaseTransitionOrder = "second"

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse