import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean

structure CrystalSymmetryPackage where
  pointGroup : Type u
  latticeType : Type v
  symmetryOperations : Prop
  centric : Prop
  polarAxis : Prop

structure CrystalSymmetryEvidence (C : CrystalSymmetryPackage) where
  symmetryOperationsClosed : C.symmetryOperations
  centricClosed : C.centric
  polarAxisClosed : C.polarAxis

def CrystalSymmetryClosed (C : CrystalSymmetryPackage) : Prop :=
  C.symmetryOperations ∧ C.centric ∧ C.polarAxis

theorem crystal_symmetry_closed_from_evidence (C : CrystalSymmetryPackage) (E : CrystalSymmetryEvidence C) : CrystalSymmetryClosed C := by
  exact And.intro E.symmetryOperationsClosed (And.intro E.centricClosed E.polarAxisClosed)

end MaterialsFerroelectricMaterialsLemmaCanonicalLaneLean
end HautevilleHouse