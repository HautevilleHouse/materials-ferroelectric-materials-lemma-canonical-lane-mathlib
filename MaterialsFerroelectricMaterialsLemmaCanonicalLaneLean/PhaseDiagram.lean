import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  pressureRange : Type v
  phaseBoundaries : Type w
  phaseDiagramMapped : Prop
  criticalPointsIdentified : Prop
  polarizationProfile : Prop
  phaseDiagramMappedTerm : phaseDiagramMapped
  criticalPointsIdentifiedTerm : criticalPointsIdentified
  polarizationProfileTerm : polarizationProfile

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseDiagramMappedClosed : P.phaseDiagramMapped
  criticalPointsIdentifiedClosed : P.criticalPointsIdentified
  polarizationProfileClosed : P.polarizationProfile

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseDiagramMapped ∧ P.criticalPointsIdentified ∧ P.polarizationProfile

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseDiagramMappedClosed (And.intro E.criticalPointsIdentifiedClosed E.polarizationProfileClosed)

end HautevilleHouse
end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
