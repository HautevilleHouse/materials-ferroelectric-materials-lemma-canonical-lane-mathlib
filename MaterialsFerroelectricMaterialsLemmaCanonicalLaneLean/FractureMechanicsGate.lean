import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure FractureMechanicsGate where
  stressIntensityFactor : ℝ
  fractureToughness : ℝ
  crackLength : ℝ
  appliedStress : ℝ
  criticalCrackLength : ℝ

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def FractureMechanicsGateEvidence (F : FractureMechanicsGate) : Prop :=
  F.stressIntensityFactor < F.fractureToughness

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse