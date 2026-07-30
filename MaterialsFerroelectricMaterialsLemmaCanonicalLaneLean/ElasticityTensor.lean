import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  elasticConstants : Type u
  stiffnessMatrix : Type v
  complianceMatrix : Type w
  symmetryConstraints : Prop
  positiveDefiniteness : Prop
  anisotropyFactors : Prop
  symmetryConstraintsTerm : symmetryConstraints
  positiveDefinitenessTerm : positiveDefiniteness
  anisotropyFactorsTerm : anisotropyFactors

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  symmetryConstraintsClosed : E.symmetryConstraints
  positiveDefinitenessClosed : E.positiveDefiniteness
  anisotropyFactorsClosed : E.anisotropyFactors

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.symmetryConstraints ∧ E.positiveDefiniteness ∧ E.anisotropyFactors

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.symmetryConstraintsClosed (And.intro Ev.positiveDefinitenessClosed Ev.anisotropyFactorsClosed)

end HautevilleHouse
end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
