import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure DomainWallStructurePackage where
  wallThickness : Prop
  wallEnergy : Prop
  polarizationGradient : Prop
  wallMobility : Prop

structure DomainWallStructureEvidence (D : DomainWallStructurePackage) where
  wallThicknessClosed : D.wallThickness
  wallEnergyClosed : D.wallEnergy
  polarizationGradientClosed : D.polarizationGradient
  wallMobilityClosed : D.wallMobility

def DomainWallStructureClosed (D : DomainWallStructurePackage) : Prop :=
  D.wallThickness ∧ D.wallEnergy ∧
  D.polarizationGradient ∧ D.wallMobility

theorem domain_wall_structure_closed_from_evidence (D : DomainWallStructurePackage) (E : DomainWallStructureEvidence D) : DomainWallStructureClosed D := by
  exact And.intro E.wallThicknessClosed
    (And.intro E.wallEnergyClosed
      (And.intro E.polarizationGradientClosed E.wallMobilityClosed))

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse