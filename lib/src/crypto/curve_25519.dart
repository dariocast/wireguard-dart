class Curve25519 {
  static const int NUM_LIMBS_255BIT = 10;
  static const int NUM_LIMBS_510BIT = 20;
  late final List<int> A;
  late final List<int> AA;
  late final List<int> B;
  late final List<int> BB;
  late final List<int> C;
  late final List<int> CB;
  late final List<int> D;
  late final List<int> DA;
  late final List<int> E;
  late final List<int> t1;
  late final List<int> t2;
  late final List<int> x_1;
  late final List<int> x_2;
  late final List<int> x_3;
  late final List<int> z_2;
  late final List<int> z_3;

  Curve25519() {
    x_1 = List.filled(NUM_LIMBS_255BIT, 0);
    x_2 = List.filled(NUM_LIMBS_255BIT, 0);
    x_3 = List.filled(NUM_LIMBS_255BIT, 0);
    z_2 = List.filled(NUM_LIMBS_255BIT, 0);
    z_3 = List.filled(NUM_LIMBS_255BIT, 0);
    A = List.filled(NUM_LIMBS_255BIT, 0);
    B = List.filled(NUM_LIMBS_255BIT, 0);
    C = List.filled(NUM_LIMBS_255BIT, 0);
    D = List.filled(NUM_LIMBS_255BIT, 0);
    E = List.filled(NUM_LIMBS_255BIT, 0);
    AA = List.filled(NUM_LIMBS_255BIT, 0);
    BB = List.filled(NUM_LIMBS_255BIT, 0);
    DA = List.filled(NUM_LIMBS_255BIT, 0);
    CB = List.filled(NUM_LIMBS_255BIT, 0);
    t1 = List.filled(NUM_LIMBS_510BIT, 0);
    t2 = List.filled(NUM_LIMBS_510BIT, 0);
  }

  _cswap(int select, List<int> x, List<int> y) {
    select = -select;
    for (int index = 0; index < NUM_LIMBS_255BIT; ++index) {
      final int dummy = select & (x[index] ^ y[index]);
      x[index] ^= dummy;
      y[index] ^= dummy;
    }
  }
}
