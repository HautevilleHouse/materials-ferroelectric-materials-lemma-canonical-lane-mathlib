import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure SpontaneousPolarizationPackage where
  polarizationVector : Type u
  remanentPolarization : Prop
  coerciveField : Prop
  hysteresisLoop : Prop

structure SpontaneousPolarizationEvidence (S : SpontaneousPolarizationPackage) where
  remanentPolarizationClosed : S.remanentPolarization
  coerciveFieldClosed : S.coerciveField
  hysteresisLoopClosed : S.hysteresisLoop

def SpontaneousPolarizationClosed (S : SpontaneousPolarizationPackage) : Prop :=
  S.remanentPolarization ∧ S.coerciveField ∧ S.hysteresisLoop

theorem spontaneous_polarization_closed_from_evidence (S : SpontaneousPolarizationPackage) (E : SpontaneousPolarizationEvidence S) : SpontaneousPolarizationClosed S := by
  exact And.intro E.remanentPolarizationClosed (And.intro E.coerciveFieldClosed E.hysteresisLoopClosed)

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse