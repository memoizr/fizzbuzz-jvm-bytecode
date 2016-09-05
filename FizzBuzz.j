.class public FizzBuzz
.super java/lang/Object

.method public static main : ([Ljava/lang/String;)V
  .limit stack 1
  .limit locals 1

  invokestatic FizzBuzz/fizzbuzz ()V

  return
.end method

.method private static fizzbuzz : ()V
  .limit stack 2
  .limit locals 1
  iconst_1
  istore_0
L0:
  iload_0
  bipush 100
  if_icmple L1
  return
L1:
  iload_0
  invokestatic FizzBuzz/resolve(I)Ljava/lang/String;
  invokestatic FizzBuzz/println(Ljava/lang/Object;)V
  iload_0
  iconst_1
  iadd
  istore_0
  goto L0
.end method

.method private static println : (Ljava/lang/Object;)V
  .limit stack 2
  .limit locals 1

  getstatic java/lang/System/out Ljava/io/PrintStream;
  aload_0
  invokevirtual java/io/PrintStream/println(Ljava/lang/Object;)V

  return
.end method

.method private static isDivisibleBy : (II)Z
  .limit stack 2
  .limit locals 2
  iload_0
  iload_1
  irem
  ifeq L0

  iconst_1
  ireturn

  L0:
  iconst_0
  ireturn
.end method

.method private static resolve : (I)Ljava/lang/String;
  .limit stack 2
  .limit locals 2

  iload_0
  bipush 15
  invokestatic FizzBuzz/isDivisibleBy(II)Z
  ifeq L_divisible_by_five_and_three

  iload_0
  bipush 5
  invokestatic FizzBuzz/isDivisibleBy(II)Z
  ifeq L_divisible_by_five

  iload_0
  bipush 3
  invokestatic FizzBuzz/isDivisibleBy(II)Z
  ifeq L_divisible_by_three

  iload_0
  invokestatic java/lang/Integer/valueOf (I)Ljava/lang/Integer;
  dup
  invokevirtual java/lang/Object/toString()Ljava/lang/String;
  areturn

  L_divisible_by_five_and_three:
  ldc "FizzBuzz"
  areturn

  L_divisible_by_five:
  ldc "Buzz"
  areturn

  L_divisible_by_three:
  ldc "Fizz"
  areturn
.end method

