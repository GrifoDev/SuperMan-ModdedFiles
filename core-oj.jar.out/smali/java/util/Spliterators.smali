.class public final Ljava/util/Spliterators;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$AbstractDoubleSpliterator;,
        Ljava/util/Spliterators$AbstractIntSpliterator;,
        Ljava/util/Spliterators$AbstractLongSpliterator;,
        Ljava/util/Spliterators$AbstractSpliterator;,
        Ljava/util/Spliterators$ArraySpliterator;,
        Ljava/util/Spliterators$DoubleArraySpliterator;,
        Ljava/util/Spliterators$DoubleIteratorSpliterator;,
        Ljava/util/Spliterators$EmptySpliterator;,
        Ljava/util/Spliterators$IntArraySpliterator;,
        Ljava/util/Spliterators$IntIteratorSpliterator;,
        Ljava/util/Spliterators$IteratorSpliterator;,
        Ljava/util/Spliterators$LongArraySpliterator;,
        Ljava/util/Spliterators$LongIteratorSpliterator;
    }
.end annotation


# static fields
.field private static final EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

.field private static final EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

.field private static final EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

.field private static final EMPTY_SPLITERATOR:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfRef;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfRef;-><init>()V

    .line 63
    sput-object v0, Ljava/util/Spliterators;->EMPTY_SPLITERATOR:Ljava/util/Spliterator;

    .line 80
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfInt;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfInt;-><init>()V

    .line 79
    sput-object v0, Ljava/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

    .line 96
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfLong;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfLong;-><init>()V

    .line 95
    sput-object v0, Ljava/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

    .line 112
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfDouble;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfDouble;-><init>()V

    .line 111
    sput-object v0, Ljava/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFromToBounds(III)V
    .locals 3
    .param p0, "arrayLength"    # I
    .param p1, "origin"    # I
    .param p2, "fence"    # I

    .prologue
    .line 386
    if-le p1, p2, :cond_0

    .line 387
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "origin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") > fence("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    if-gez p1, :cond_1

    .line 391
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 393
    :cond_1
    if-le p2, p0, :cond_2

    .line 394
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 385
    :cond_2
    return-void
.end method

.method public static emptyDoubleSpliterator()Ljava/util/Spliterator$OfDouble;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Ljava/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public static emptyIntSpliterator()Ljava/util/Spliterator$OfInt;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Ljava/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public static emptyLongSpliterator()Ljava/util/Spliterator$OfLong;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Ljava/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

    return-object v0
.end method

.method public static emptySpliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Ljava/util/Spliterators;->EMPTY_SPLITERATOR:Ljava/util/Spliterator;

    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v0, Ljava/util/Spliterators$1Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$1Adapter;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
    .locals 1
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfDouble;

    .prologue
    .line 802
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    new-instance v0, Ljava/util/Spliterators$4Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$4Adapter;-><init>(Ljava/util/Spliterator$OfDouble;)V

    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
    .locals 1
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfInt;

    .prologue
    .line 712
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v0, Ljava/util/Spliterators$2Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$2Adapter;-><init>(Ljava/util/Spliterator$OfInt;)V

    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;
    .locals 1
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfLong;

    .prologue
    .line 757
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    new-instance v0, Ljava/util/Spliterators$3Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$3Adapter;-><init>(Ljava/util/Spliterator$OfLong;)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/PrimitiveIterator$OfDouble;JI)Ljava/util/Spliterator$OfDouble;
    .locals 3
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .prologue
    .line 622
    new-instance v1, Ljava/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfDouble;

    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfDouble;JI)V

    return-object v1
.end method

.method public static spliterator([DI)Ljava/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "additionalCharacteristics"    # I

    .prologue
    .line 334
    new-instance v1, Ljava/util/Spliterators$DoubleArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DI)V

    return-object v1
.end method

.method public static spliterator([DIII)Ljava/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .prologue
    .line 371
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    .line 372
    new-instance v0, Ljava/util/Spliterators$DoubleArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;
    .locals 3
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .prologue
    .line 508
    new-instance v1, Ljava/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfInt;

    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfInt;JI)V

    return-object v1
.end method

.method public static spliterator([II)Ljava/util/Spliterator$OfInt;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "additionalCharacteristics"    # I

    .prologue
    .line 206
    new-instance v1, Ljava/util/Spliterators$IntArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([II)V

    return-object v1
.end method

.method public static spliterator([IIII)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .prologue
    .line 239
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    .line 240
    new-instance v0, Ljava/util/Spliterators$IntArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/PrimitiveIterator$OfLong;JI)Ljava/util/Spliterator$OfLong;
    .locals 3
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .prologue
    .line 565
    new-instance v1, Ljava/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfLong;

    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfLong;JI)V

    return-object v1
.end method

.method public static spliterator([JI)Ljava/util/Spliterator$OfLong;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "additionalCharacteristics"    # I

    .prologue
    .line 268
    new-instance v1, Ljava/util/Spliterators$LongArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JI)V

    return-object v1
.end method

.method public static spliterator([JIII)Ljava/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .prologue
    .line 305
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    .line 306
    new-instance v0, Ljava/util/Spliterators$LongArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;
    .locals 2
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;I)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v1, Ljava/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v1
.end method

.method public static spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;
    .locals 3
    .param p1, "size"    # J
    .param p3, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;JI)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v1, Ljava/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;JI)V

    return-object v1
.end method

.method public static spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Ljava/util/Spliterators$ArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "III)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    .line 178
    new-instance v0, Ljava/util/Spliterators$ArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfDouble;I)Ljava/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p1, "characteristics"    # I

    .prologue
    .line 649
    new-instance v1, Ljava/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfDouble;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfDouble;I)V

    return-object v1
.end method

.method public static spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;
    .locals 2
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p1, "characteristics"    # I

    .prologue
    .line 535
    new-instance v1, Ljava/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfInt;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfInt;I)V

    return-object v1
.end method

.method public static spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfLong;I)Ljava/util/Spliterator$OfLong;
    .locals 2
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p1, "characteristics"    # I

    .prologue
    .line 592
    new-instance v1, Ljava/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfLong;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfLong;I)V

    return-object v1
.end method

.method public static spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;
    .locals 2
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;I)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v1, Ljava/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;I)V

    return-object v1
.end method
