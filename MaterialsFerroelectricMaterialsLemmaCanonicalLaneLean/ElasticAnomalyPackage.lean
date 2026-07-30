import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure ElasticAnomalyPackage where
  elasticConstants : Type u
  piezoelectricCoupling : Prop
  electrostrictiveEffect : Prop
  complianceChange : Prop

structure ElasticAnomalyEvidence (E : ElasticAnomalyPackage) where
  piezoelectricCouplingClosed : E.piezoelectricCoupling
  electrostrictiveEffectClosed : E.electrostrictiveEffect
  complianceChangeClosed : E.complianceChange

def ElasticAnomalyClosed (E : ElasticAnomalyPackage) : Prop :=
  E.piezoelectricCoupling ∧ E.electrostrictiveEffect ∧ E.complianceChange

theorem elastic_anomaly_closed_from_evidence (E : ElasticAnomalyPackage) (Ev : ElasticAnomalyEvidence E) : ElasticAnomalyClosed E := by
  exact And.intro Ev.piezoelectricCouplingClosed (And.intro Ev.electrostrictiveEffectClosed Ev.complianceChangeClosed)

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse