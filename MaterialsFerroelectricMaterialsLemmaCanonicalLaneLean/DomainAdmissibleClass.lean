import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure FerroelectricAdmittedObject where
  crystal : Type
  symmetryGroup : Type
  polarizationVector : Type
  phaseDiagramStable : Prop
  polarizationSaturated : Prop
  conclusion : polarizationSaturated

structure AdmissibleClass where
  object : FerroelectricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FerroelectricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse