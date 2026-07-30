import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type u
  stressField : Type v
  stressIntensityFactor : Type w
  fractureCriterion : Prop
  crackPropagationLaw : Prop
  energyReleaseRate : Prop
  fractureCriterionTerm : fractureCriterion
  crackPropagationLawTerm : crackPropagationLaw
  energyReleaseRateTerm : energyReleaseRate

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureCriterionClosed : F.fractureCriterion
  crackPropagationLawClosed : F.crackPropagationLaw
  energyReleaseRateClosed : F.energyReleaseRate

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureCriterion ∧ F.crackPropagationLaw ∧ F.energyReleaseRate

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.fractureCriterionClosed (And.intro E.crackPropagationLawClosed E.energyReleaseRateClosed)

end HautevilleHouse
end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
