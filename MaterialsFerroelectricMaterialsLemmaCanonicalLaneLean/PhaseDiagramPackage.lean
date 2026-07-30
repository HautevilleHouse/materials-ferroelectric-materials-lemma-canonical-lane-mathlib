import MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean.CrystallographyPackage

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) where
  temperatureAxis : Type
  compositionAxis : Type
  curieLine : Prop
  morphotropicBoundary : Prop
  polarizationSwitching : Prop

structure PhaseDiagramEvidence (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) (P : PhaseDiagramPackage A C) where
  curieLineClosed : P.curieLine
  morphotropicBoundaryClosed : P.morphotropicBoundary
  polarizationSwitchingClosed : P.polarizationSwitching

def PhaseDiagramClosed (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) (P : PhaseDiagramPackage A C) : Prop :=
  P.curieLine ∧ P.morphotropicBoundary ∧ P.polarizationSwitching

theorem phase_diagram_closed_from_evidence (A : FerroelectricAdmittedObject) (C : CrystallographyPackage A) (P : PhaseDiagramPackage A C) (E : PhaseDiagramEvidence A C P) :
    PhaseDiagramClosed A C P := by
  exact And.intro E.curieLineClosed (And.intro E.morphotropicBoundaryClosed E.polarizationSwitchingClosed)

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse