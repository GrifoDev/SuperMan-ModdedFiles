.class Ljava/util/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;

.field private tmpBase:I

.field private tmpLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/ComparableTimSort;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;II)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x7

    iput v3, p0, Ljava/util/ComparableTimSort;->minGallop:I

    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v0, p1

    const/16 v3, 0x200

    if-ge v0, v3, :cond_1

    ushr-int/lit8 v2, v0, 0x1

    :goto_0
    if-eqz p2, :cond_0

    if-ge p4, v2, :cond_2

    :cond_0
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    iput v5, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    iput v2, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    :goto_1
    const/16 v3, 0x78

    if-ge v0, v3, :cond_3

    const/4 v1, 0x5

    :goto_2
    new-array v3, v1, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    new-array v3, v1, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    return-void

    :cond_1
    const/16 v2, 0x100

    goto :goto_0

    :cond_2
    add-int v3, p3, v2

    array-length v4, p2

    if-gt v3, v4, :cond_0

    iput-object p2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    iput p3, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    iput p4, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    goto :goto_1

    :cond_3
    const/16 v3, 0x606

    if-ge v0, v3, :cond_4

    const/16 v1, 0xa

    goto :goto_2

    :cond_4
    const v3, 0x1d16f

    if-ge v0, v3, :cond_5

    const/16 v1, 0x18

    goto :goto_2

    :cond_5
    const/16 v1, 0x31

    goto :goto_2
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    if-gt p1, p3, :cond_0

    if-gt p3, p2, :cond_0

    move v5, v6

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    if-ne p3, p1, :cond_2

    add-int/lit8 p3, p3, 0x1

    :cond_2
    :goto_1
    if-ge p3, p2, :cond_9

    aget-object v3, p0, p3

    check-cast v3, Ljava/lang/Comparable;

    move v0, p1

    move v4, p3

    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_4

    if-gt p1, v4, :cond_3

    move v5, v6

    :goto_2
    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v0, v4, :cond_6

    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v1, 0x1

    goto :goto_3

    :cond_6
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_8

    if-ne v0, v4, :cond_7

    move v5, v6

    :goto_4
    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_7
    move v5, v7

    goto :goto_4

    :cond_8
    sub-int v2, p3, v0

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    aput-object v3, p0, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v8, v0, 0x1

    aget-object v8, p0, v8

    aput-object v8, p0, v5

    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    aget-object v8, p0, v0

    aput-object v8, p0, v5

    goto :goto_5

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v4, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-ge p1, p2, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v0, 0x1

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, p0, p1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, v0}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    :cond_4
    sub-int v2, v0, p1

    return v2

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    if-ge v2, p1, :cond_0

    move v1, p1

    shr-int/lit8 v2, p1, 0x1

    or-int v1, p1, v2

    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    move v1, p1

    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    iput v1, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    iput v3, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    :cond_0
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    :cond_1
    iget-object v2, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    if-lez p3, :cond_0

    if-ltz p4, :cond_0

    if-ge p4, p3, :cond_0

    move v5, v6

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_5

    sub-int v2, p3, p4

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    move v0, v3

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    if-gtz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_3
    if-le v3, v2, :cond_4

    move v3, v2

    :cond_4
    add-int/2addr v0, p4

    add-int/2addr v3, p4

    :goto_2
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_a

    const/4 v5, -0x1

    if-gt v5, v0, :cond_9

    if-ge v0, v3, :cond_9

    if-gt v3, p3, :cond_9

    move v5, v6

    :goto_3
    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_5
    add-int/lit8 v2, p4, 0x1

    :cond_6
    :goto_4
    if-ge v3, v2, :cond_7

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_7

    move v0, v3

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    if-gtz v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_7
    if-le v3, v2, :cond_8

    move v3, v2

    :cond_8
    move v4, v0

    sub-int v0, p4, v3

    sub-int v3, p4, v4

    goto :goto_2

    :cond_9
    move v5, v7

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    :goto_5
    if-ge v0, v3, :cond_c

    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_b

    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    :cond_b
    move v3, v1

    goto :goto_5

    :cond_c
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_e

    if-ne v0, v3, :cond_d

    :goto_6
    if-nez v6, :cond_e

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_d
    move v6, v7

    goto :goto_6

    :cond_e
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    if-lez p3, :cond_0

    if-ltz p4, :cond_0

    if-ge p4, p3, :cond_0

    move v5, v6

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    add-int/lit8 v2, p4, 0x1

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    move v0, v3

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    if-gtz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_3
    if-le v3, v2, :cond_4

    move v3, v2

    :cond_4
    move v4, v0

    sub-int v0, p4, v3

    sub-int v3, p4, v4

    :goto_2
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_a

    const/4 v5, -0x1

    if-gt v5, v0, :cond_9

    if-ge v0, v3, :cond_9

    if-gt v3, p3, :cond_9

    move v5, v6

    :goto_3
    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_5
    sub-int v2, p3, p4

    :cond_6
    :goto_4
    if-ge v3, v2, :cond_7

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_7

    move v0, v3

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    if-gtz v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_7
    if-le v3, v2, :cond_8

    move v3, v2

    :cond_8
    add-int/2addr v0, p4

    add-int/2addr v3, p4

    goto :goto_2

    :cond_9
    move v5, v7

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    :goto_5
    if-ge v0, v3, :cond_c

    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    :cond_c
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_e

    if-ne v0, v3, :cond_d

    :goto_6
    if-nez v6, :cond_e

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_d
    move v6, v7

    goto :goto_6

    :cond_e
    return v3
.end method

.method private mergeAt(I)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v8, 0x2

    if-lt v5, v8, :cond_0

    move v5, v6

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ltz p1, :cond_2

    move v5, v6

    :goto_1
    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x2

    if-eq p1, v5, :cond_4

    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-ne p1, v5, :cond_5

    :cond_4
    move v5, v6

    :goto_2
    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_5
    move v5, v7

    goto :goto_2

    :cond_6
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    aget v0, v5, p1

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v3, v5, p1

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x1

    aget v1, v5, v8

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x1

    aget v4, v5, v8

    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_8

    if-lez v3, :cond_7

    if-lez v4, :cond_7

    move v5, v6

    :goto_3
    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_7
    move v5, v7

    goto :goto_3

    :cond_8
    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_a

    add-int v5, v0, v3

    if-ne v5, v1, :cond_9

    move v5, v6

    :goto_4
    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_9
    move v5, v7

    goto :goto_4

    :cond_a
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int v8, v3, v4

    aput v8, v5, p1

    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-ne p1, v5, :cond_b

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x1

    iget-object v9, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v10, p1, 0x2

    aget v9, v9, v10

    aput v9, v5, v8

    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x1

    iget-object v9, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v10, p1, 0x2

    aget v9, v9, v10

    aput v9, v5, v8

    :cond_b
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Comparable;

    iget-object v8, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    invoke-static {v5, v8, v0, v3, v7}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_d

    if-ltz v2, :cond_c

    move v5, v6

    :goto_5
    if-nez v5, :cond_d

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_c
    move v5, v7

    goto :goto_5

    :cond_d
    add-int/2addr v0, v2

    sub-int/2addr v3, v2

    if-nez v3, :cond_e

    return-void

    :cond_e
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v8, v0, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v5, v8

    check-cast v5, Ljava/lang/Comparable;

    iget-object v8, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v9, v4, -0x1

    invoke-static {v5, v8, v1, v4, v9}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v4

    sget-boolean v5, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v5, :cond_10

    if-ltz v4, :cond_f

    move v5, v6

    :goto_6
    if-nez v5, :cond_10

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_f
    move v5, v7

    goto :goto_6

    :cond_10
    if-nez v4, :cond_11

    return-void

    :cond_11
    if-gt v3, v4, :cond_12

    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    :goto_7
    return-void

    :cond_12
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_7
.end method

.method private mergeCollapse()V
    .locals 5

    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    if-lez v0, :cond_1

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 16

    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_1

    if-lez p2, :cond_0

    if-lez p4, :cond_0

    add-int v14, p1, p2

    move/from16 v0, p3

    if-ne v14, v0, :cond_0

    const/4 v14, 0x1

    :goto_0
    if-nez v14, :cond_1

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/ComparableTimSort;->tmpBase:I

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v14, p1, p2

    add-int/lit8 v5, v14, -0x1

    add-int v14, v13, p4

    add-int/lit8 v7, v14, -0x1

    add-int v14, p3, p4

    add-int/lit8 v9, v14, -0x1

    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v6, v5, -0x1

    aget-object v14, v2, v5

    aput-object v14, v2, v9

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_2

    add-int/lit8 v14, p4, -0x1

    sub-int v14, v10, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_3

    sub-int v9, v10, p2

    sub-int v5, v6, p2

    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v14, v12, v7

    aput-object v14, v2, v9

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    move v9, v10

    move v5, v6

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_4
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_6

    if-lez p2, :cond_5

    const/4 v14, 0x1

    move/from16 v0, p4

    if-le v0, v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    if-nez v14, :cond_6

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    aget-object v14, v12, v7

    check-cast v14, Ljava/lang/Comparable;

    aget-object v15, v2, v5

    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_9

    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v6, v5, -0x1

    aget-object v14, v2, v5

    aput-object v14, v2, v9

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_1d

    move v9, v10

    move v5, v6

    :cond_7
    :goto_3
    const/4 v14, 0x1

    if-ge v11, v14, :cond_8

    const/4 v11, 0x1

    :cond_8
    move-object/from16 v0, p0

    iput v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_16

    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_15

    if-lez p2, :cond_14

    const/4 v14, 0x1

    :goto_4
    if-nez v14, :cond_15

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_9
    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v8, v7, -0x1

    aget-object v14, v12, v7

    aput-object v14, v2, v9

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    add-int/lit8 p4, p4, -0x1

    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_a

    move v9, v10

    move v7, v8

    goto :goto_3

    :cond_a
    move v9, v10

    move v7, v8

    :goto_5
    or-int v14, v3, v4

    if-lt v14, v11, :cond_4

    :goto_6
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_c

    if-lez p2, :cond_b

    const/4 v14, 0x1

    move/from16 v0, p4

    if-le v0, v14, :cond_b

    const/4 v14, 0x1

    :goto_7
    if-nez v14, :cond_c

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_b
    const/4 v14, 0x0

    goto :goto_7

    :cond_c
    aget-object v14, v12, v7

    check-cast v14, Ljava/lang/Comparable;

    add-int/lit8 v15, p2, -0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v2, v0, v1, v15}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v14

    sub-int v3, p2, v14

    if-eqz v3, :cond_d

    sub-int/2addr v9, v3

    sub-int/2addr v5, v3

    sub-int p2, p2, v3

    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-static {v2, v14, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_7

    :cond_d
    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v8, v7, -0x1

    aget-object v14, v12, v7

    aput-object v14, v2, v9

    add-int/lit8 p4, p4, -0x1

    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_e

    move v9, v10

    move v7, v8

    goto :goto_3

    :cond_e
    aget-object v14, v2, v5

    check-cast v14, Ljava/lang/Comparable;

    add-int/lit8 v15, p4, -0x1

    move/from16 v0, p4

    invoke-static {v14, v12, v13, v0, v15}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v14

    sub-int v4, p4, v14

    if-eqz v4, :cond_1c

    sub-int v9, v10, v4

    sub-int v7, v8, v4

    sub-int p4, p4, v4

    add-int/lit8 v14, v7, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-static {v12, v14, v2, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v14, 0x1

    move/from16 v0, p4

    if-le v0, v14, :cond_7

    :goto_8
    add-int/lit8 v10, v9, -0x1

    add-int/lit8 v6, v5, -0x1

    aget-object v14, v2, v5

    aput-object v14, v2, v9

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_f

    move v9, v10

    move v5, v6

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v11, v11, -0x1

    const/4 v14, 0x7

    if-lt v3, v14, :cond_10

    const/4 v14, 0x1

    move v15, v14

    :goto_9
    const/4 v14, 0x7

    if-lt v4, v14, :cond_11

    const/4 v14, 0x1

    :goto_a
    or-int/2addr v14, v15

    if-eqz v14, :cond_12

    move v9, v10

    move v5, v6

    goto/16 :goto_6

    :cond_10
    const/4 v14, 0x0

    move v15, v14

    goto :goto_9

    :cond_11
    const/4 v14, 0x0

    goto :goto_a

    :cond_12
    if-gez v11, :cond_13

    const/4 v11, 0x0

    :cond_13
    add-int/lit8 v11, v11, 0x2

    move v9, v10

    move v5, v6

    goto/16 :goto_1

    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_15
    sub-int v9, v9, p2

    sub-int v5, v5, p2

    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v14, v12, v7

    aput-object v14, v2, v9

    :goto_b
    return-void

    :cond_16
    if-nez p4, :cond_17

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Comparison method violates its general contract!"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_17
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_19

    if-nez p2, :cond_18

    const/4 v14, 0x1

    :goto_c
    if-nez v14, :cond_19

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_18
    const/4 v14, 0x0

    goto :goto_c

    :cond_19
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_1b

    if-lez p4, :cond_1a

    const/4 v14, 0x1

    :goto_d
    if-nez v14, :cond_1b

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_1a
    const/4 v14, 0x0

    goto :goto_d

    :cond_1b
    add-int/lit8 v14, p4, -0x1

    sub-int v14, v9, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_1c
    move v9, v10

    move v7, v8

    goto :goto_8

    :cond_1d
    move v9, v10

    move v5, v6

    goto/16 :goto_5
.end method

.method private mergeLo(IIII)V
    .locals 14

    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_1

    if-lez p2, :cond_0

    if-lez p4, :cond_0

    add-int v12, p1, p2

    move/from16 v0, p3

    if-ne v12, v0, :cond_0

    const/4 v12, 0x1

    :goto_0
    if-nez v12, :cond_1

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    move/from16 v0, p2

    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    iget v4, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    move/from16 v6, p3

    move v8, p1

    move/from16 v0, p2

    invoke-static {v1, p1, v11, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, p1, 0x1

    add-int/lit8 v6, p3, 0x1

    aget-object v12, v1, p3

    aput-object v12, v1, p1

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_2

    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    return-void

    :cond_3
    iget v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_6

    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_5

    if-lez p4, :cond_5

    const/4 v12, 0x1

    :goto_2
    if-nez v12, :cond_6

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    aget-object v13, v11, v4

    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_9

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v7, v6, 0x1

    aget-object v12, v1, v6

    aput-object v12, v1, v8

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_1d

    move v8, v9

    move v6, v7

    :cond_7
    :goto_3
    const/4 v12, 0x1

    if-ge v10, v12, :cond_8

    const/4 v10, 0x1

    :cond_8
    iput v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_16

    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_15

    if-lez p4, :cond_14

    const/4 v12, 0x1

    :goto_4
    if-nez v12, :cond_15

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_9
    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-object v12, v11, v4

    aput-object v12, v1, v8

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_a

    move v8, v9

    move v4, v5

    goto :goto_3

    :cond_a
    move v8, v9

    move v4, v5

    :goto_5
    or-int v12, v2, v3

    if-lt v12, v10, :cond_4

    :goto_6
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_c

    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_b

    if-lez p4, :cond_b

    const/4 v12, 0x1

    :goto_7
    if-nez v12, :cond_c

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_b
    const/4 v12, 0x0

    goto :goto_7

    :cond_c
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-static {v12, v11, v4, v0, v13}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v11, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v2

    add-int/2addr v4, v2

    sub-int p2, p2, v2

    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_7

    :cond_d
    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v7, v6, 0x1

    aget-object v12, v1, v6

    aput-object v12, v1, v8

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_e

    move v8, v9

    move v6, v7

    goto :goto_3

    :cond_e
    aget-object v12, v11, v4

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v12, v1, v7, v0, v13}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {v1, v7, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, v9, v3

    add-int v6, v7, v3

    sub-int p4, p4, v3

    if-eqz p4, :cond_7

    :goto_8
    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-object v12, v11, v4

    aput-object v12, v1, v8

    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_f

    move v8, v9

    move v4, v5

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v10, v10, -0x1

    const/4 v12, 0x7

    if-lt v2, v12, :cond_10

    const/4 v12, 0x1

    move v13, v12

    :goto_9
    const/4 v12, 0x7

    if-lt v3, v12, :cond_11

    const/4 v12, 0x1

    :goto_a
    or-int/2addr v12, v13

    if-eqz v12, :cond_12

    move v8, v9

    move v4, v5

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    move v13, v12

    goto :goto_9

    :cond_11
    const/4 v12, 0x0

    goto :goto_a

    :cond_12
    if-gez v10, :cond_13

    const/4 v10, 0x0

    :cond_13
    add-int/lit8 v10, v10, 0x2

    move v8, v9

    move v4, v5

    goto/16 :goto_1

    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_15
    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    :goto_b
    return-void

    :cond_16
    if-nez p2, :cond_17

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "Comparison method violates its general contract!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_17
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_19

    if-nez p4, :cond_18

    const/4 v12, 0x1

    :goto_c
    if-nez v12, :cond_19

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_18
    const/4 v12, 0x0

    goto :goto_c

    :cond_19
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_1b

    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_1a

    const/4 v12, 0x1

    :goto_d
    if-nez v12, :cond_1b

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_1a
    const/4 v12, 0x0

    goto :goto_d

    :cond_1b
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_1c
    move v8, v9

    move v6, v7

    goto :goto_8

    :cond_1d
    move v8, v9

    move v6, v7

    goto/16 :goto_5
.end method

.method private static minRunLength(I)I
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_2

    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2

    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4

    add-int/lit8 p2, p2, -0x1

    move v0, p2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    add-int/lit8 p1, v1, 0x1

    aget-object v3, p0, v0

    aput-object v3, p0, v1

    add-int/lit8 p2, v0, -0x1

    aput-object v2, p0, v0

    move v0, p2

    move v1, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-boolean v6, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    array-length v6, p0

    if-gt p2, v6, :cond_0

    move v6, v7

    :goto_0
    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    sub-int v3, p2, p1

    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    return-void

    :cond_2
    const/16 v6, 0x20

    if-ge v3, v6, :cond_3

    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    return-void

    :cond_3
    new-instance v5, Ljava/util/ComparableTimSort;

    invoke-direct {v5, p0, p3, p4, p5}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    invoke-static {v3}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    move-result v2

    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v4

    if-ge v4, v2, :cond_5

    if-gt v3, v2, :cond_6

    move v0, v3

    :goto_1
    add-int v6, p1, v0

    add-int v9, p1, v4

    invoke-static {p0, p1, v6, v9}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    move v4, v0

    :cond_5
    invoke-direct {v5, p1, v4}, Ljava/util/ComparableTimSort;->pushRun(II)V

    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    add-int/2addr p1, v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_4

    sget-boolean v6, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v6, :cond_8

    if-ne p1, p2, :cond_7

    move v6, v7

    :goto_2
    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v6, v8

    goto :goto_2

    :cond_8
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    sget-boolean v6, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v6, :cond_a

    iget v6, v5, Ljava/util/ComparableTimSort;->stackSize:I

    if-ne v6, v7, :cond_9

    :goto_3
    if-nez v7, :cond_a

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_9
    move v7, v8

    goto :goto_3

    :cond_a
    return-void
.end method
