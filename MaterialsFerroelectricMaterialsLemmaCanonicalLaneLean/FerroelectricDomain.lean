import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure FerroelectricDomainPackage where
  domainWallType : Type u
  polarizationVector : Type v
  switchingField : Type w
  domainWallEnergy : Prop
  polarizationSwitching : Prop
  hysteresisLoop : Prop
  domainWallEnergyTerm : domainWallEnergy
  polarizationSwitchingTerm : polarizationSwitching
  hysteresisLoopTerm : hysteresisLoop

structure FerroelectricDomainEvidence (F : FerroelectricDomainPackage) where
  domainWallEnergyClosed : F.domainWallEnergy
  polarizationSwitchingClosed : F.polarizationSwitching
  hysteresisLoopClosed : F.hysteresisLoop

def FerroelectricDomainClosed (F : FerroelectricDomainPackage) : Prop :=
  F.domainWallEnergy ∧ F.polarizationSwitching ∧ F.hysteresisLoop

theorem ferroelectric_domain_closed_from_evidence (F : FerroelectricDomainPackage) (E : FerroelectricDomainEvidence F) : FerroelectricDomainClosed F := by
  exact And.intro E.domainWallEnergyClosed (And.intro E.polarizationSwitchingClosed E.hysteresisLoopClosed)

end HautevilleHouse
end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
