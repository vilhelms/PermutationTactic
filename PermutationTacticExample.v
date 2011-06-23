Require Import List.
Require Import Permutation.
Require Import PermutationTactic.

Example permut_example: forall (a b c: list nat), 
  Permutation c (6::a++b) ->
  Permutation (5::c) ((5::b)++(6::a++[])).
Proof.
  intros a b c H. rewrite H. permutation.
Qed.
