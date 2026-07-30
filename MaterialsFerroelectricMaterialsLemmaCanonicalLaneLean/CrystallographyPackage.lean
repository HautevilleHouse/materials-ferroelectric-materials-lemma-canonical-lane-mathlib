import MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean.DomainAdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure CrystallographyPackage (A : FerroelectricAdmittedObject) where
  bravaisLattice : Type
  siteSymmetry : Type
  phaseTransitionTemperature : Prop
  spontaneousStrain : Prop
  domainWallEnergy : Prop

structure CrystallographyEvidence (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) where
  phaseTransitionTemperatureClosed : C.phaseTransitionTemperature
  spontaneousStrainClosed : C.spontaneousStrain
  domainWallEnergyClosed : C.domainWallEnergy

def CrystallographyClosed (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) : Prop :=
  C.phaseTransitionTemperature ∧ C.spontaneousStrain ∧ C.domainWallEnergy

theorem crystallography_closed_from_evidence (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) (E : CrystallographyEvidence A C) :
    CrystallographyClosed A C := by
  exact And.intro E.phaseTransitionTemperatureClosed (And.intro E.spontaneousStrainClosed E.domainWallEnergyClosed)

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse