import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure LandauGinzburgDevonshirePackage where
  freeEnergyExpansion : Prop
  orderParameter : Type u
  phaseTransitionOrder : Prop
  dielectricSusceptibility : Prop

structure LandauGinzburgDevonshireEvidence (L : LandauGinzburgDevonshirePackage) where
  freeEnergyExpansionClosed : L.freeEnergyExpansion
  phaseTransitionOrderClosed : L.phaseTransitionOrder
  dielectricSusceptibilityClosed : L.dielectricSusceptibility

def LandauGinzburgDevonshireClosed (L : LandauGinzburgDevonshirePackage) : Prop :=
  L.freeEnergyExpansion ∧ L.phaseTransitionOrder ∧ L.dielectricSusceptibility

theorem landau_ginzburg_devonshire_closed_from_evidence (L : LandauGinzburgDevonshirePackage) (E : LandauGinzburgDevonshireEvidence L) : LandauGinzburgDevonshireClosed L := by
  exact And.intro E.freeEnergyExpansionClosed (And.intro E.phaseTransitionOrderClosed E.dielectricSusceptibilityClosed)

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse