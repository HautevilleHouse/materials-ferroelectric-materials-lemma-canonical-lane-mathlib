import MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean.LandauGinzburgTheory

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure FerroelectricElasticityPackage where
  elasticStiffnessTensor : Type
  piezoelectricCoupling : Prop
  electrostrictiveCoupling : Prop
  mechanicalBoundaryConditions : Prop
  domainWallMobility : Prop

structure FerroelectricElasticityEvidence
    (E : FerroelectricElasticityPackage) where
  elasticStiffnessDefined : E.elasticStiffnessTensor
  piezoelectricCouplingClosed : E.piezoelectricCoupling
  electrostrictiveCouplingClosed : E.electrostrictiveCoupling
  boundaryConditionsClosed : E.mechanicalBoundaryConditions
  domainWallMobilityClosed : E.domainWallMobility

def FerroelectricElasticityClosed (E : FerroelectricElasticityPackage) : Prop :=
  E.elasticStiffnessTensor ∧ E.piezoelectricCoupling ∧
  E.electrostrictiveCoupling ∧ E.mechanicalBoundaryConditions ∧
  E.domainWallMobility

theorem ferroelectric_elasticity_closed_from_evidence
    (E : FerroelectricElasticityPackage)
    (Ev : FerroelectricElasticityEvidence E) :
    FerroelectricElasticityClosed E := by
  exact And.intro Ev.elasticStiffnessDefined
    (And.intro Ev.piezoelectricCouplingClosed
      (And.intro Ev.electrostrictiveCouplingClosed
        (And.intro Ev.boundaryConditionsClosed
          Ev.domainWallMobilityClosed)))

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse