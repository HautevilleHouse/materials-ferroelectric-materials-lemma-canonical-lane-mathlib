import MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean.CrystallographyAdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure LandauGinzburgFunctional where
  orderParameter : Type
  gradientEnergy : Prop
  electrostaticEnergy : Prop
  freeEnergyDensity : Prop
  polarizationField : Type
  domainWallEnergy : Prop
  depolarizationField : Prop

structure LandauGinzburgEvidence (L : LandauGinzburgFunctional) where
  freeEnergyMinimized : L.freeEnergyDensity
  domainWallFormed : L.domainWallEnergy
  depolarizationAccounted : L.depolarizationField

def LandauGinzburgClosed (L : LandauGinzburgFunctional) : Prop :=
  L.freeEnergyDensity ∧ L.domainWallEnergy ∧ L.depolarizationField

theorem landau_ginzburg_closed_from_evidence (L : LandauGinzburgFunctional)
    (E : LandauGinzburgEvidence L) : LandauGinzburgClosed L := by
  exact And.intro E.freeEnergyMinimized
    (And.intro E.domainWallFormed E.depolarizationAccounted)

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse