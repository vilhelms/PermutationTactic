Require Import List.
Require Import Permutation.
Require Import PermutationTactic.

Example permut_example: forall (a b c: list nat), 
  Permutation c (6::a++b) ->
  Permutation (5::c) ((5::b)++(6::a++[])).
Proof.
  intros a b c H. rewrite H. permutation.
Qed.

Export ListNotations.

Example butterfly: forall b u t e r f l y : nat,
 Permutation ([b;u;t;t;e;r]++[f;l;y]) ([f;l;u;t;t;e;r]++[b;y]).
Proof.
 intros.
 permutation.
Qed.
