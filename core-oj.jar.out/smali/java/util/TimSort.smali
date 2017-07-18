.class Ljava/util/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private tmpBase:I

.field private tmpLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/TimSort;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;[TT;II)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x7

    iput v4, p0, Ljava/util/TimSort;->minGallop:I

    iput v6, p0, Ljava/util/TimSort;->stackSize:I

    iput-object p1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    array-length v0, p1

    const/16 v4, 0x200

    if-ge v0, v4, :cond_1

    ushr-int/lit8 v3, v0, 0x1

    :goto_0
    if-eqz p3, :cond_0

    if-ge p5, v3, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    iput v6, p0, Ljava/util/TimSort;->tmpBase:I

    iput v3, p0, Ljava/util/TimSort;->tmpLen:I

    :goto_1
    const/16 v4, 0x78

    if-ge v0, v4, :cond_3

    const/4 v2, 0x5

    :goto_2
    new-array v4, v2, [I

    iput-object v4, p0, Ljava/util/TimSort;->runBase:[I

    new-array v4, v2, [I

    iput-object v4, p0, Ljava/util/TimSort;->runLen:[I

    return-void

    :cond_1
    const/16 v3, 0x100

    goto :goto_0

    :cond_2
    add-int v4, p4, v3

    array-length v5, p3

    if-gt v4, v5, :cond_0

    iput-object p3, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    iput p4, p0, Ljava/util/TimSort;->tmpBase:I

    iput p5, p0, Ljava/util/TimSort;->tmpLen:I

    goto :goto_1

    :cond_3
    const/16 v4, 0x606

    if-ge v0, v4, :cond_4

    const/16 v2, 0xa

    goto :goto_2

    :cond_4
    const v4, 0x1d16f

    if-ge v0, v4, :cond_5

    const/16 v2, 0x18

    goto :goto_2

    :cond_5
    const/16 v2, 0x31

    goto :goto_2
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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

    move v0, p1

    move v4, p3

    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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

    invoke-interface {p4, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v1, 0x1

    goto :goto_3

    :cond_6
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v4, Ljava/util/TimSort;->-assertionsDisabled:Z

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

    aget-object v3, p0, p1

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, v0}, Ljava/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    :cond_4
    sub-int v2, v0, p1

    return v2

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    iget v2, p0, Ljava/util/TimSort;->tmpLen:I

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
    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    iput v1, p0, Ljava/util/TimSort;->tmpLen:I

    iput v3, p0, Ljava/util/TimSort;->tmpBase:I

    :cond_0
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    :cond_1
    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_5

    sub-int v2, p3, p4

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_b

    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    :cond_b
    move v3, v1

    goto :goto_5

    :cond_c
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    add-int/lit8 v2, p4, 0x1

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    :cond_c
    sget-boolean v5, Ljava/util/TimSort;->-assertionsDisabled:Z

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
    .locals 13

    const/4 v12, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    move v0, v12

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    move v0, v12

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v0, :cond_6

    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    if-eq p1, v0, :cond_4

    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v12

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    aget v2, v0, p1

    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    aget v3, v0, p1

    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v8, v0, v1

    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v0, :cond_8

    if-lez v3, :cond_7

    if-lez v8, :cond_7

    move v0, v12

    :goto_3
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    move v0, v4

    goto :goto_3

    :cond_8
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v0, :cond_a

    add-int v0, v2, v3

    if-ne v0, v7, :cond_9

    move v0, v12

    :goto_4
    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    move v0, v4

    goto :goto_4

    :cond_a
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int v1, v3, v8

    aput v1, v0, p1

    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v5, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x2

    aget v5, v5, v6

    aput v5, v0, v1

    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v5, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x2

    aget v5, v5, v6

    aput v5, v0, v1

    :cond_b
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v7

    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v0 .. v5}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v11

    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v0, :cond_d

    if-ltz v11, :cond_c

    move v0, v12

    :goto_5
    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    move v0, v4

    goto :goto_5

    :cond_d
    add-int/2addr v2, v11

    sub-int/2addr v3, v11

    if-nez v3, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v2, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v5, v0, v1

    iget-object v6, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v9, v8, -0x1

    iget-object v10, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v5 .. v10}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v8

    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz v8, :cond_f

    move v4, v12

    :cond_f
    if-nez v4, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    if-nez v8, :cond_11

    return-void

    :cond_11
    if-gt v3, v8, :cond_12

    invoke-direct {p0, v2, v3, v7, v8}, Ljava/util/TimSort;->mergeLo(IIII)V

    :goto_6
    return-void

    :cond_12
    invoke-direct {p0, v2, v3, v7, v8}, Ljava/util/TimSort;->mergeHi(IIII)V

    goto :goto_6
.end method

.method private mergeCollapse()V
    .locals 5

    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    if-lez v0, :cond_1

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 23

    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-lez p2, :cond_0

    if-lez p4, :cond_0

    add-int v2, p1, p2

    move/from16 v0, p3

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/TimSort;->tmpBase:I

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v3, v0, v9, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, p1, p2

    add-int/lit8 v16, v2, -0x1

    add-int v2, v10, p4

    add-int/lit8 v18, v2, -0x1

    add-int v2, p3, p4

    add-int/lit8 v20, v2, -0x1

    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v17, v16, -0x1

    aget-object v2, v3, v16

    aput-object v2, v3, v20

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_2

    add-int/lit8 v2, p4, -0x1

    sub-int v2, v21, v2

    move/from16 v0, p4

    invoke-static {v9, v10, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    sub-int v20, v21, p2

    sub-int v16, v17, p2

    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v9, v18

    aput-object v2, v3, v20

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v22, v0

    move/from16 v20, v21

    move/from16 v16, v17

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_4
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    if-lez p2, :cond_5

    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    aget-object v2, v9, v18

    aget-object v4, v3, v16

    invoke-interface {v7, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_9

    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v17, v16, -0x1

    aget-object v2, v3, v16

    aput-object v2, v3, v20

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_1d

    move/from16 v20, v21

    move/from16 v16, v17

    :cond_7
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ge v0, v2, :cond_8

    const/16 v22, 0x1

    :cond_8
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_16

    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_15

    if-lez p2, :cond_14

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_9
    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v19, v18, -0x1

    aget-object v2, v9, v18

    aput-object v2, v3, v20

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_a

    move/from16 v20, v21

    move/from16 v18, v19

    goto :goto_3

    :cond_a
    move/from16 v20, v21

    move/from16 v18, v19

    :goto_5
    or-int v2, v14, v15

    move/from16 v0, v22

    if-lt v2, v0, :cond_4

    :goto_6
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_c

    if-lez p2, :cond_b

    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_b

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    aget-object v2, v9, v18

    add-int/lit8 v6, p2, -0x1

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v14, p2, v2

    if-eqz v14, :cond_d

    sub-int v20, v20, v14

    sub-int v16, v16, v14

    sub-int p2, p2, v14

    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v3, v2, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_7

    :cond_d
    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v19, v18, -0x1

    aget-object v2, v9, v18

    aput-object v2, v3, v20

    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_e

    move/from16 v20, v21

    move/from16 v18, v19

    goto/16 :goto_3

    :cond_e
    aget-object v8, v3, v16

    add-int/lit8 v12, p4, -0x1

    move/from16 v11, p4

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v15, p4, v2

    if-eqz v15, :cond_1c

    sub-int v20, v21, v15

    sub-int v18, v19, v15

    sub-int p4, p4, v15

    add-int/lit8 v2, v18, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v9, v2, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_7

    :goto_8
    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v17, v16, -0x1

    aget-object v2, v3, v16

    aput-object v2, v3, v20

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_f

    move/from16 v20, v21

    move/from16 v16, v17

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v22, v22, -0x1

    const/4 v2, 0x7

    if-lt v14, v2, :cond_10

    const/4 v2, 0x1

    move v4, v2

    :goto_9
    const/4 v2, 0x7

    if-lt v15, v2, :cond_11

    const/4 v2, 0x1

    :goto_a
    or-int/2addr v2, v4

    if-eqz v2, :cond_12

    move/from16 v20, v21

    move/from16 v16, v17

    goto/16 :goto_6

    :cond_10
    const/4 v2, 0x0

    move v4, v2

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_a

    :cond_12
    if-gez v22, :cond_13

    const/16 v22, 0x0

    :cond_13
    add-int/lit8 v22, v22, 0x2

    move/from16 v20, v21

    move/from16 v16, v17

    goto/16 :goto_1

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_15
    sub-int v20, v20, p2

    sub-int v16, v16, p2

    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v9, v18

    aput-object v2, v3, v20

    :goto_b
    return-void

    :cond_16
    if-nez p4, :cond_17

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Comparison method violates its general contract!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_19

    if-nez p2, :cond_18

    const/4 v2, 0x1

    :goto_c
    if-nez v2, :cond_19

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_c

    :cond_19
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_1b

    if-lez p4, :cond_1a

    const/4 v2, 0x1

    :goto_d
    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    :cond_1b
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v20, v2

    move/from16 v0, p4

    invoke-static {v9, v10, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_1c
    move/from16 v20, v21

    move/from16 v18, v19

    goto/16 :goto_8

    :cond_1d
    move/from16 v20, v21

    move/from16 v16, v17

    goto/16 :goto_5
.end method

.method private mergeLo(IIII)V
    .locals 21

    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-lez p2, :cond_0

    if-lez p4, :cond_0

    add-int v2, p1, p2

    move/from16 v0, p3

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/TimSort;->tmpBase:I

    move/from16 v10, p3

    move/from16 v18, p1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v9, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v18, p1, 0x1

    add-int/lit8 v10, p3, 0x1

    aget-object v2, v9, p3

    aput-object v2, v9, p1

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_2

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v3, v4, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    move/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v9, v10, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v18, p4

    aget-object v5, v3, v4

    aput-object v5, v9, v2

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v20, v0

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_4
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_5

    if-lez p4, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    aget-object v2, v9, v10

    aget-object v5, v3, v4

    invoke-interface {v7, v2, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_9

    add-int/lit8 v19, v18, 0x1

    add-int/lit8 v17, v10, 0x1

    aget-object v2, v9, v10

    aput-object v2, v9, v18

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_1d

    move/from16 v18, v19

    move/from16 v10, v17

    :cond_7
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ge v0, v2, :cond_8

    const/16 v20, 0x1

    :cond_8
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_16

    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_15

    if-lez p4, :cond_14

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_9
    add-int/lit8 v19, v18, 0x1

    add-int/lit8 v16, v4, 0x1

    aget-object v2, v3, v4

    aput-object v2, v9, v18

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    move/from16 v18, v19

    move/from16 v4, v16

    goto :goto_3

    :cond_a
    move/from16 v18, v19

    move/from16 v4, v16

    :goto_5
    or-int v2, v14, v15

    move/from16 v0, v20

    if-lt v2, v0, :cond_4

    move/from16 v17, v10

    :goto_6
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_b

    if-lez p4, :cond_b

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    aget-object v2, v9, v17

    const/4 v6, 0x0

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v14

    if-eqz v14, :cond_d

    move/from16 v0, v18

    invoke-static {v3, v4, v9, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v18, v18, v14

    add-int/2addr v4, v14

    sub-int p2, p2, v14

    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_d

    move/from16 v10, v17

    goto :goto_3

    :cond_d
    add-int/lit8 v19, v18, 0x1

    add-int/lit8 v10, v17, 0x1

    aget-object v2, v9, v17

    aput-object v2, v9, v18

    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_e

    move/from16 v18, v19

    goto/16 :goto_3

    :cond_e
    aget-object v8, v3, v4

    const/4 v12, 0x0

    move/from16 v11, p4

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v15

    if-eqz v15, :cond_1c

    move/from16 v0, v19

    invoke-static {v9, v10, v9, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v18, v19, v15

    add-int/2addr v10, v15

    sub-int p4, p4, v15

    if-eqz p4, :cond_7

    :goto_8
    add-int/lit8 v19, v18, 0x1

    add-int/lit8 v16, v4, 0x1

    aget-object v2, v3, v4

    aput-object v2, v9, v18

    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_f

    move/from16 v18, v19

    move/from16 v4, v16

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v20, v20, -0x1

    const/4 v2, 0x7

    if-lt v14, v2, :cond_10

    const/4 v2, 0x1

    move v5, v2

    :goto_9
    const/4 v2, 0x7

    if-lt v15, v2, :cond_11

    const/4 v2, 0x1

    :goto_a
    or-int/2addr v2, v5

    if-eqz v2, :cond_12

    move/from16 v18, v19

    move/from16 v17, v10

    move/from16 v4, v16

    goto/16 :goto_6

    :cond_10
    const/4 v2, 0x0

    move v5, v2

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_a

    :cond_12
    if-gez v20, :cond_13

    const/16 v20, 0x0

    :cond_13
    add-int/lit8 v20, v20, 0x2

    move/from16 v18, v19

    move/from16 v4, v16

    goto/16 :goto_1

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_15
    move/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v9, v10, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v18, p4

    aget-object v5, v3, v4

    aput-object v5, v9, v2

    :goto_b
    return-void

    :cond_16
    if-nez p2, :cond_17

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Comparison method violates its general contract!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_19

    if-nez p4, :cond_18

    const/4 v2, 0x1

    :goto_c
    if-nez v2, :cond_19

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_c

    :cond_19
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_1a

    const/4 v2, 0x1

    :goto_d
    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    :cond_1b
    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v3, v4, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_1c
    move/from16 v18, v19

    goto/16 :goto_8

    :cond_1d
    move/from16 v18, v19

    move/from16 v10, v17

    goto/16 :goto_5
.end method

.method private static minRunLength(I)I
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

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

    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p1, v0, v1

    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p2, v0, v1

    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

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

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;[TT;II)V"
        }
    .end annotation

    sget-boolean v1, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    array-length v1, p0

    if-gt p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sub-int v9, p2, p1

    const/4 v1, 0x2

    if-ge v9, v1, :cond_2

    return-void

    :cond_2
    const/16 v1, 0x20

    if-ge v9, v1, :cond_3

    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v7

    add-int v1, p1, v7

    invoke-static {p0, p1, p2, v1, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    return-void

    :cond_3
    new-instance v0, Ljava/util/TimSort;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V

    invoke-static {v9}, Ljava/util/TimSort;->minRunLength(I)I

    move-result v8

    :cond_4
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v10

    if-ge v10, v8, :cond_5

    if-gt v9, v8, :cond_6

    move v6, v9

    :goto_1
    add-int v1, p1, v6

    add-int v2, p1, v10

    invoke-static {p0, p1, v1, v2, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    move v10, v6

    :cond_5
    invoke-direct {v0, p1, v10}, Ljava/util/TimSort;->pushRun(II)V

    invoke-direct {v0}, Ljava/util/TimSort;->mergeCollapse()V

    add-int/2addr p1, v10

    sub-int/2addr v9, v10

    if-nez v9, :cond_4

    sget-boolean v1, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v1, :cond_8

    if-ne p1, p2, :cond_7

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6
    move v6, v8

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    invoke-direct {v0}, Ljava/util/TimSort;->mergeForceCollapse()V

    sget-boolean v1, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v1, :cond_a

    iget v1, v0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    return-void
.end method
