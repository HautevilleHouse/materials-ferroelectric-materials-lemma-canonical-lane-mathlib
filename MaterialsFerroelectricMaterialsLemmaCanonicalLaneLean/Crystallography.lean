import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure CrystallographyPackage where
  unitCell : Type u
  latticeParameters : Type v
  symmetryGroup : Type w
  spaceGroupDetermined : Prop
  cellVolumeComputed : Prop
  bravaisLatticeClassified : Prop
  distortionModes : Prop
  spaceGroupDeterminedTerm : spaceGroupDetermined
  cellVolumeComputedTerm : cellVolumeComputed
  bravaisLatticeClassifiedTerm : bravaisLatticeClassified
  distortionModesTerm : distortionModes

structure CrystallographyEvidence (C : CrystallographyPackage) where
  spaceGroupDeterminedClosed : C.spaceGroupDetermined
  cellVolumeComputedClosed : C.cellVolumeComputed
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  distortionModesClosed : C.distortionModes

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.spaceGroupDetermined ∧ C.cellVolumeComputed ∧ C.bravaisLatticeClassified ∧ C.distortionModes

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.spaceGroupDeterminedClosed (And.intro E.cellVolumeComputedClosed (And.intro E.bravaisLatticeClassifiedClosed E.distortionModesClosed))

end HautevilleHouse
end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
