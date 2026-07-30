import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure FerroelectricCrystalStructure where
  polarizationAxis : String
  perovskiteType : String
  curieTemperature : ℝ
  dielectricPermittivity : ℝ
  polarizationMagnitude : ℝ
  symmetryGroup : String
  phaseTransitionTemperature : ℝ
  spontaneousPolarization : Prop

structure FerroelectricCrystalEvidence (C : FerroelectricCrystalStructure) where
  symmetryGroupClosed : C.symmetryGroup = "P4mm" ∨ C.symmetryGroup = "R3c"
  curieTemperatureClosed : C.curieTemperature > 0
  spontaneousPolarizationClosed : C.spontaneousPolarization

def FerroelectricCrystalClosed (C : FerroelectricCrystalStructure) : Prop :=
  C.spontaneousPolarization ∧ C.curieTemperature > 0

theorem ferroelectric_crystal_closed_from_evidence
    (C : FerroelectricCrystalStructure) (E : FerroelectricCrystalEvidence C) :
    FerroelectricCrystalClosed C := by
  exact And.intro E.spontaneousPolarizationClosed E.curieTemperatureClosed

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse