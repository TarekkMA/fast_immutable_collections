import "package:fast_immutable_collections/fast_immutable_collections.dart";
import "package:test/test.dart";

void main() {
  /////////////////////////////////////////////////////////////////////////////

  test("Simple Initialization", () {
    const IListOf3 iListOf3 = IListOf3(2, 1, 3);

    expect(iListOf3.first, 2);
    expect(iListOf3.second, 1);
    expect(iListOf3.third, 3);
  });

  //////////////////////////////////////////////////////////////////////////////

  test("toString", () {
    const IListOf3 iListOf3 = IListOf3(2, 1, 3);

    expect(iListOf3.toString(), "[2, 1, 3]");
  });

  //////////////////////////////////////////////////////////////////////////////

  test("==", () {
    final IListOf3<int> iListOf3 = IListOf3(2, 1, 3);

    expect(iListOf3 == iListOf3, isTrue);
    expect(iListOf3 == IListOf3<int>(2, 1, 3), isTrue);
    expect(iListOf3 == IListOf3<int>(1, 2, 3), isFalse);
  });

  //////////////////////////////////////////////////////////////////////////////

  test("hashCode", () {
    expect(IListOf3(2, 1, 3) == IListOf3(2, 1, 3), isTrue);
    expect(IListOf3(2, 1, 3).hashCode, IListOf3(2, 1, 3).hashCode);

    expect(IListOf3(1, 2, 3) == IListOf3(2, 1, 3), isFalse);
    expect(IListOf3(1, 2, 3).hashCode, isNot(IListOf3(2, 1, 3).hashCode));
  });

  /////////////////////////////////////////////////////////////////////////////
}
