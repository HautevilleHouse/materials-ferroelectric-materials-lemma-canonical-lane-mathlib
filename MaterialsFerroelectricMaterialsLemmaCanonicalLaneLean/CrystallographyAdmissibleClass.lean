import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure FerroelectricCrystalSystem where
  latticeType : Type
  unitCell : Type
  polarizationAxis : Type
  symmetryGroup : Type
  spaceGroup : String
  pointGroup : String
  ferroelectricBelowCurie : Prop
  polarizationReversible : Prop

structure FerroelectricAdmittedObject where
  crystal : FerroelectricCrystalSystem
  polarizationSwitching : Prop
  spontaneousPolarization : Prop
  conclusion : polarizationSwitching ∧ spontaneousPolarization

def FerroelectricWitnessClosed (O : FerroelectricAdmittedObject) : Prop :=
  O.polarizationSwitching ∧ O.spontaneousPolarization

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse