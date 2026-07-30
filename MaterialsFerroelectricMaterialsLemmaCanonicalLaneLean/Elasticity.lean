import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticModuli : Type w
  stressDefined : Prop
  strainDefined : Prop
  constitutiveLaw : Prop
  linearElasticRegime : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressDefinedClosed : E.stressDefined
  strainDefinedClosed : E.strainDefined
  constitutiveLawClosed : E.constitutiveLaw
  linearElasticRegimeClosed : E.linearElasticRegime

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressDefined ∧ E.strainDefined ∧ E.constitutiveLaw ∧ E.linearElasticRegime

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressDefinedClosed (And.intro Ev.strainDefinedClosed (And.intro Ev.constitutiveLawClosed Ev.linearElasticRegimeClosed))

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse