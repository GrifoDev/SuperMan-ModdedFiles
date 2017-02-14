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

    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfRef;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfRef;-><init>()V

    sput-object v0, Ljava/util/Spliterators;->EMPTY_SPLITERATOR:Ljava/util/Spliterator;

    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfInt;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfInt;-><init>()V

    sput-object v0, Ljava/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfLong;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfLong;-><init>()V

    sput-object v0, Ljava/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfDouble;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfDouble;-><init>()V

    sput-object v0, Ljava/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFromToBounds(III)V
    .locals 3

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    if-le p2, p0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    return-void
.end method

.method public static emptyDoubleSpliterator()Ljava/util/Spliterator$OfDouble;
    .locals 1

    sget-object v0, Ljava/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public static emptyIntSpliterator()Ljava/util/Spliterator$OfInt;
    .locals 1

    sget-object v0, Ljava/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public static emptyLongSpliterator()Ljava/util/Spliterator$OfLong;
    .locals 1

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

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Spliterators$1Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$1Adapter;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Spliterators$4Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$4Adapter;-><init>(Ljava/util/Spliterator$OfDouble;)V

    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Spliterators$2Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$2Adapter;-><init>(Ljava/util/Spliterator$OfInt;)V

    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Spliterators$3Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$3Adapter;-><init>(Ljava/util/Spliterator$OfLong;)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/PrimitiveIterator$OfDouble;JI)Ljava/util/Spliterator$OfDouble;
    .locals 3

    new-instance v1, Ljava/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfDouble;

    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfDouble;JI)V

    return-object v1
.end method

.method public static spliterator([DI)Ljava/util/Spliterator$OfDouble;
    .locals 2

    new-instance v1, Ljava/util/Spliterators$DoubleArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DI)V

    return-object v1
.end method

.method public static spliterator([DIII)Ljava/util/Spliterator$OfDouble;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    new-instance v0, Ljava/util/Spliterators$DoubleArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;
    .locals 3

    new-instance v1, Ljava/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfInt;

    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfInt;JI)V

    return-object v1
.end method

.method public static spliterator([II)Ljava/util/Spliterator$OfInt;
    .locals 2

    new-instance v1, Ljava/util/Spliterators$IntArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([II)V

    return-object v1
.end method

.method public static spliterator([IIII)Ljava/util/Spliterator$OfInt;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    new-instance v0, Ljava/util/Spliterators$IntArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/PrimitiveIterator$OfLong;JI)Ljava/util/Spliterator$OfLong;
    .locals 3

    new-instance v1, Ljava/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfLong;

    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfLong;JI)V

    return-object v1
.end method

.method public static spliterator([JI)Ljava/util/Spliterator$OfLong;
    .locals 2

    new-instance v1, Ljava/util/Spliterators$LongArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JI)V

    return-object v1
.end method

.method public static spliterator([JIII)Ljava/util/Spliterator$OfLong;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    new-instance v0, Ljava/util/Spliterators$LongArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;
    .locals 2
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

    new-instance v1, Ljava/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v1
.end method

.method public static spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;
    .locals 3
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

    new-instance v1, Ljava/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;JI)V

    return-object v1
.end method

.method public static spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;
    .locals 2
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

    new-instance v1, Ljava/util/Spliterators$ArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;
    .locals 1
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

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    new-instance v0, Ljava/util/Spliterators$ArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfDouble;I)Ljava/util/Spliterator$OfDouble;
    .locals 2

    new-instance v1, Ljava/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfDouble;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfDouble;I)V

    return-object v1
.end method

.method public static spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;
    .locals 2

    new-instance v1, Ljava/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfInt;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfInt;I)V

    return-object v1
.end method

.method public static spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfLong;I)Ljava/util/Spliterator$OfLong;
    .locals 2

    new-instance v1, Ljava/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PrimitiveIterator$OfLong;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfLong;I)V

    return-object v1
.end method

.method public static spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;
    .locals 2
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

    new-instance v1, Ljava/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;I)V

    return-object v1
.end method
