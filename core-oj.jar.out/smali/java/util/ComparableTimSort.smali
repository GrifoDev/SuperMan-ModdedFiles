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

    .prologue
    const-class v0, Ljava/util/ComparableTimSort;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    .line 42
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;II)V
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "work"    # [Ljava/lang/Object;
    .param p3, "workBase"    # I
    .param p4, "workLen"    # I

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v3, 0x7

    iput v3, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 108
    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 121
    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 124
    array-length v0, p1

    .line 125
    .local v0, "len":I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_1

    .line 126
    ushr-int/lit8 v2, v0, 0x1

    .line 127
    .local v2, "tlen":I
    :goto_0
    if-eqz p2, :cond_0

    if-ge p4, v2, :cond_2

    .line 128
    :cond_0
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 129
    iput v5, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 130
    iput v2, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    .line 152
    :goto_1
    const/16 v3, 0x78

    if-ge v0, v3, :cond_3

    const/4 v1, 0x5

    .line 155
    .local v1, "stackLen":I
    :goto_2
    new-array v3, v1, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    .line 156
    new-array v3, v1, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    .line 120
    return-void

    .line 126
    .end local v1    # "stackLen":I
    .end local v2    # "tlen":I
    :cond_1
    const/16 v2, 0x100

    .restart local v2    # "tlen":I
    goto :goto_0

    .line 127
    :cond_2
    add-int v3, p3, v2

    array-length v4, p2

    if-gt v3, v4, :cond_0

    .line 133
    iput-object p2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 134
    iput p3, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 135
    iput p4, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    goto :goto_1

    .line 153
    :cond_3
    const/16 v3, 0x606

    if-ge v0, v3, :cond_4

    const/16 v1, 0xa

    goto :goto_2

    .line 154
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
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 245
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

    .line 246
    :cond_1
    if-ne p3, p1, :cond_2

    .line 247
    add-int/lit8 p3, p3, 0x1

    .line 248
    :cond_2
    :goto_1
    if-ge p3, p2, :cond_9

    .line 249
    aget-object v3, p0, p3

    check-cast v3, Ljava/lang/Comparable;

    .line 252
    .local v3, "pivot":Ljava/lang/Comparable;
    move v0, p1

    .line 253
    .local v0, "left":I
    move v4, p3

    .line 254
    .local v4, "right":I
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

    .line 260
    :cond_4
    :goto_3
    if-ge v0, v4, :cond_6

    .line 261
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 262
    .local v1, "mid":I
    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    .line 263
    move v4, v1

    goto :goto_3

    .line 265
    :cond_5
    add-int/lit8 v0, v1, 0x1

    goto :goto_3

    .line 267
    .end local v1    # "mid":I
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

    .line 276
    :cond_8
    sub-int v2, p3, v0

    .line 278
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    .line 282
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    :goto_5
    aput-object v3, p0, v0

    .line 248
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 279
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v8, v0, 0x1

    aget-object v8, p0, v8

    aput-object v8, p0, v5

    .line 280
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    aget-object v8, p0, v0

    aput-object v8, p0, v5

    goto :goto_5

    .line 244
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Comparable;
    .end local v4    # "right":I
    :cond_9
    return-void

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    sget-boolean v4, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-ge p1, p2, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 315
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 316
    .local v0, "runHi":I
    if-ne v0, p2, :cond_2

    .line 317
    return v3

    .line 320
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, p0, p1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    move v0, v1

    .line 321
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_3
    invoke-static {p0, p1, v0}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 329
    :cond_4
    sub-int v2, v0, p1

    return v2

    .line 325
    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_5
    move v0, v1

    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_1
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "minCapacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 884
    iget v2, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    if-ge v2, p1, :cond_0

    .line 886
    move v1, p1

    .line 887
    .local v1, "newSize":I
    shr-int/lit8 v2, p1, 0x1

    or-int v1, p1, v2

    .line 888
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 889
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 890
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 891
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 892
    add-int/lit8 v1, v1, 0x1

    .line 894
    if-gez v1, :cond_1

    .line 895
    move v1, p1

    .line 900
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 901
    .local v0, "newArray":[Ljava/lang/Object;
    iput-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 902
    iput v1, p0, Ljava/util/ComparableTimSort;->tmpLen:I

    .line 903
    iput v3, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 905
    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local v1    # "newSize":I
    :cond_0
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 897
    .restart local v1    # "newSize":I
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
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
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

    .prologue
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 505
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

    .line 507
    :cond_1
    const/4 v0, 0x0

    .line 508
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    .line 509
    .local v3, "ofs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_5

    .line 511
    sub-int v2, p3, p4

    .line 512
    .local v2, "maxOfs":I
    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    .line 513
    move v0, v3

    .line 514
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 515
    if-gtz v3, :cond_2

    .line 516
    move v3, v2

    goto :goto_1

    .line 518
    :cond_3
    if-le v3, v2, :cond_4

    .line 519
    move v3, v2

    .line 522
    :cond_4
    add-int/2addr v0, p4

    .line 523
    add-int/2addr v3, p4

    .line 541
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

    .line 526
    .end local v2    # "maxOfs":I
    :cond_5
    add-int/lit8 v2, p4, 0x1

    .line 527
    .restart local v2    # "maxOfs":I
    :cond_6
    :goto_4
    if-ge v3, v2, :cond_7

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_7

    .line 528
    move v0, v3

    .line 529
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 530
    if-gtz v3, :cond_6

    .line 531
    move v3, v2

    goto :goto_4

    .line 533
    :cond_7
    if-le v3, v2, :cond_8

    .line 534
    move v3, v2

    .line 537
    :cond_8
    move v4, v0

    .line 538
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 539
    sub-int v3, p4, v4

    goto :goto_2

    .end local v4    # "tmp":I
    :cond_9
    move v5, v7

    .line 541
    goto :goto_3

    .line 548
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 549
    :goto_5
    if-ge v0, v3, :cond_c

    .line 550
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 552
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_b

    .line 553
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 555
    :cond_b
    move v3, v1

    goto :goto_5

    .line 557
    .end local v1    # "m":I
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

    .line 558
    :cond_e
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 8
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
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

    .prologue
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 575
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

    .line 577
    :cond_1
    const/4 v3, 0x1

    .line 578
    .local v3, "ofs":I
    const/4 v0, 0x0

    .line 579
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    .line 581
    add-int/lit8 v2, p4, 0x1

    .line 582
    .local v2, "maxOfs":I
    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    .line 583
    move v0, v3

    .line 584
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 585
    if-gtz v3, :cond_2

    .line 586
    move v3, v2

    goto :goto_1

    .line 588
    :cond_3
    if-le v3, v2, :cond_4

    .line 589
    move v3, v2

    .line 592
    :cond_4
    move v4, v0

    .line 593
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 594
    sub-int v3, p4, v4

    .line 611
    .end local v4    # "tmp":I
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

    .line 597
    .end local v2    # "maxOfs":I
    :cond_5
    sub-int v2, p3, p4

    .line 598
    .restart local v2    # "maxOfs":I
    :cond_6
    :goto_4
    if-ge v3, v2, :cond_7

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_7

    .line 599
    move v0, v3

    .line 600
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 601
    if-gtz v3, :cond_6

    .line 602
    move v3, v2

    goto :goto_4

    .line 604
    :cond_7
    if-le v3, v2, :cond_8

    .line 605
    move v3, v2

    .line 608
    :cond_8
    add-int/2addr v0, p4

    .line 609
    add-int/2addr v3, p4

    goto :goto_2

    :cond_9
    move v5, v7

    .line 611
    goto :goto_3

    .line 618
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 619
    :goto_5
    if-ge v0, v3, :cond_c

    .line 620
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 622
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_b

    .line 623
    move v3, v1

    goto :goto_5

    .line 625
    :cond_b
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 627
    .end local v1    # "m":I
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

    .line 628
    :cond_e
    return v3
.end method

.method private mergeAt(I)V
    .locals 11
    .param p1, "i"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 435
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

    .line 436
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

    .line 437
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

    .line 439
    :cond_6
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    aget v0, v5, p1

    .line 440
    .local v0, "base1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v3, v5, p1

    .line 441
    .local v3, "len1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x1

    aget v1, v5, v8

    .line 442
    .local v1, "base2":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x1

    aget v4, v5, v8

    .line 443
    .local v4, "len2":I
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

    .line 444
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

    .line 451
    :cond_a
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int v8, v3, v4

    aput v8, v5, p1

    .line 452
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-ne p1, v5, :cond_b

    .line 453
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x1

    iget-object v9, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v10, p1, 0x2

    aget v9, v9, v10

    aput v9, v5, v8

    .line 454
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x1

    iget-object v9, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v10, p1, 0x2

    aget v9, v9, v10

    aput v9, v5, v8

    .line 456
    :cond_b
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 462
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Comparable;

    iget-object v8, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    invoke-static {v5, v8, v0, v3, v7}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 463
    .local v2, "k":I
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

    .line 464
    :cond_d
    add-int/2addr v0, v2

    .line 465
    sub-int/2addr v3, v2

    .line 466
    if-nez v3, :cond_e

    .line 467
    return-void

    .line 473
    :cond_e
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v8, v0, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v5, v8

    check-cast v5, Ljava/lang/Comparable;

    iget-object v8, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 474
    add-int/lit8 v9, v4, -0x1

    .line 473
    invoke-static {v5, v8, v1, v4, v9}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v4

    .line 475
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

    .line 476
    :cond_10
    if-nez v4, :cond_11

    .line 477
    return-void

    .line 480
    :cond_11
    if-gt v3, v4, :cond_12

    .line 481
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    .line 434
    :goto_7
    return-void

    .line 483
    :cond_12
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_7
.end method

.method private mergeCollapse()V
    .locals 5

    .prologue
    .line 399
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 400
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 401
    .local v0, "n":I
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

    .line 402
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    .line 403
    add-int/lit8 v0, v0, -0x1

    .line 404
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    .line 406
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 398
    .end local v0    # "n":I
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .prologue
    .line 418
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 419
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 420
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    .line 421
    add-int/lit8 v0, v0, -0x1

    .line 422
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 417
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 16
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 766
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

    .line 769
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 770
    .local v2, "a":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v12

    .line 771
    .local v12, "tmp":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 772
    .local v13, "tmpBase":I
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    add-int v14, p1, p2

    add-int/lit8 v5, v14, -0x1

    .line 775
    .local v5, "cursor1":I
    add-int v14, v13, p4

    add-int/lit8 v7, v14, -0x1

    .line 776
    .local v7, "cursor2":I
    add-int v14, p3, p4

    add-int/lit8 v9, v14, -0x1

    .line 779
    .local v9, "dest":I
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .local v6, "cursor1":I
    aget-object v14, v2, v5

    aput-object v14, v2, v9

    .line 780
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_2

    .line 781
    add-int/lit8 v14, p4, -0x1

    sub-int v14, v10, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    return-void

    .line 784
    :cond_2
    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_3

    .line 785
    sub-int v9, v10, p2

    .line 786
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v5, v6, p2

    .line 787
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    aget-object v14, v12, v7

    aput-object v14, v2, v9

    .line 789
    return-void

    .line 792
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .local v11, "minGallop":I
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 795
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_1
    const/4 v3, 0x0

    .line 796
    .local v3, "count1":I
    const/4 v4, 0x0

    .line 803
    .local v4, "count2":I
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

    .line 804
    :cond_6
    aget-object v14, v12, v7

    check-cast v14, Ljava/lang/Comparable;

    aget-object v15, v2, v5

    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_9

    .line 805
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v14, v2, v5

    aput-object v14, v2, v9

    .line 806
    add-int/lit8 v3, v3, 0x1

    .line 807
    const/4 v4, 0x0

    .line 808
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_1d

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 857
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :cond_7
    :goto_3
    const/4 v14, 0x1

    if-ge v11, v14, :cond_8

    const/4 v11, 0x1

    .end local v11    # "minGallop":I
    :cond_8
    move-object/from16 v0, p0

    iput v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 859
    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_16

    .line 860
    sget-boolean v14, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v14, :cond_15

    if-lez p2, :cond_14

    const/4 v14, 0x1

    :goto_4
    if-nez v14, :cond_15

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 811
    .restart local v11    # "minGallop":I
    :cond_9
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .local v8, "cursor2":I
    aget-object v14, v12, v7

    aput-object v14, v2, v9

    .line 812
    add-int/lit8 v4, v4, 0x1

    .line 813
    const/4 v3, 0x0

    .line 814
    add-int/lit8 p4, p4, -0x1

    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_a

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 815
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_3

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_a
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 817
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    :goto_5
    or-int v14, v3, v4

    if-lt v14, v11, :cond_4

    .line 825
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

    .line 826
    :cond_c
    aget-object v14, v12, v7

    check-cast v14, Ljava/lang/Comparable;

    add-int/lit8 v15, p2, -0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v2, v0, v1, v15}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v14

    sub-int v3, p2, v14

    .line 827
    if-eqz v3, :cond_d

    .line 828
    sub-int/2addr v9, v3

    .line 829
    sub-int/2addr v5, v3

    .line 830
    sub-int p2, p2, v3

    .line 831
    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-static {v2, v14, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    if-eqz p2, :cond_7

    .line 835
    :cond_d
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .restart local v8    # "cursor2":I
    aget-object v14, v12, v7

    aput-object v14, v2, v9

    .line 836
    add-int/lit8 p4, p4, -0x1

    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_e

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 837
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_3

    .line 839
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_e
    aget-object v14, v2, v5

    check-cast v14, Ljava/lang/Comparable;

    add-int/lit8 v15, p4, -0x1

    move/from16 v0, p4

    invoke-static {v14, v12, v13, v0, v15}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v14

    sub-int v4, p4, v14

    .line 840
    if-eqz v4, :cond_1c

    .line 841
    sub-int v9, v10, v4

    .line 842
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v7, v8, v4

    .line 843
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    sub-int p4, p4, v4

    .line 844
    add-int/lit8 v14, v7, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-static {v12, v14, v2, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 845
    const/4 v14, 0x1

    move/from16 v0, p4

    if-le v0, v14, :cond_7

    .line 848
    :goto_8
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v14, v2, v5

    aput-object v14, v2, v9

    .line 849
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_f

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 850
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_3

    .line 851
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_f
    add-int/lit8 v11, v11, -0x1

    .line 852
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

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_6

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_10
    const/4 v14, 0x0

    move v15, v14

    goto :goto_9

    :cond_11
    const/4 v14, 0x0

    goto :goto_a

    .line 853
    :cond_12
    if-gez v11, :cond_13

    .line 854
    const/4 v11, 0x0

    .line 855
    :cond_13
    add-int/lit8 v11, v11, 0x2

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_1

    .line 860
    .end local v11    # "minGallop":I
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 861
    :cond_15
    sub-int v9, v9, p2

    .line 862
    sub-int v5, v5, p2

    .line 863
    add-int/lit8 v14, v5, 0x1

    add-int/lit8 v15, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v14, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    aget-object v14, v12, v7

    aput-object v14, v2, v9

    .line 765
    :goto_b
    return-void

    .line 865
    :cond_16
    if-nez p4, :cond_17

    .line 866
    new-instance v14, Ljava/lang/IllegalArgumentException;

    .line 867
    const-string/jumbo v15, "Comparison method violates its general contract!"

    .line 866
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 869
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

    .line 870
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

    .line 871
    :cond_1b
    add-int/lit8 v14, p4, -0x1

    sub-int v14, v9, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    .restart local v11    # "minGallop":I
    :cond_1c
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_8

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_1d
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_5
.end method

.method private mergeLo(IIII)V
    .locals 14
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 649
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

    .line 652
    :cond_1
    iget-object v1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 653
    .local v1, "a":[Ljava/lang/Object;
    move/from16 v0, p2

    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    .line 655
    .local v11, "tmp":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/ComparableTimSort;->tmpBase:I

    .line 656
    .local v4, "cursor1":I
    move/from16 v6, p3

    .line 657
    .local v6, "cursor2":I
    move v8, p1

    .line 658
    .local v8, "dest":I
    move/from16 v0, p2

    invoke-static {v1, p1, v11, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    add-int/lit8 v8, p1, 0x1

    add-int/lit8 v6, p3, 0x1

    aget-object v12, v1, p3

    aput-object v12, v1, p1

    .line 662
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_2

    .line 663
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    return-void

    .line 666
    :cond_2
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 667
    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    .line 669
    return-void

    .line 672
    :cond_3
    iget v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 675
    .local v10, "minGallop":I
    :goto_1
    const/4 v2, 0x0

    .line 676
    .local v2, "count1":I
    const/4 v3, 0x0

    .line 683
    .local v3, "count2":I
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

    .line 684
    :cond_6
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    aget-object v13, v11, v4

    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_9

    .line 685
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .local v9, "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .local v7, "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 686
    add-int/lit8 v3, v3, 0x1

    .line 687
    const/4 v2, 0x0

    .line 688
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_1d

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 737
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :cond_7
    :goto_3
    const/4 v12, 0x1

    if-ge v10, v12, :cond_8

    const/4 v10, 0x1

    .end local v10    # "minGallop":I
    :cond_8
    iput v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 739
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_16

    .line 740
    sget-boolean v12, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v12, :cond_15

    if-lez p4, :cond_14

    const/4 v12, 0x1

    :goto_4
    if-nez v12, :cond_15

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 691
    .restart local v10    # "minGallop":I
    :cond_9
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .local v5, "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 692
    add-int/lit8 v2, v2, 0x1

    .line 693
    const/4 v3, 0x0

    .line 694
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_a

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 695
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_3

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_a
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 697
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    :goto_5
    or-int v12, v2, v3

    if-lt v12, v10, :cond_4

    .line 705
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

    .line 706
    :cond_c
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-static {v12, v11, v4, v0, v13}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 707
    if-eqz v2, :cond_d

    .line 708
    invoke-static {v11, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    add-int/2addr v8, v2

    .line 710
    add-int/2addr v4, v2

    .line 711
    sub-int p2, p2, v2

    .line 712
    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_7

    .line 715
    :cond_d
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 716
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_e

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 717
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_3

    .line 719
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_e
    aget-object v12, v11, v4

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v12, v1, v7, v0, v13}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    .line 720
    if-eqz v3, :cond_1c

    .line 721
    invoke-static {v1, v7, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    add-int v8, v9, v3

    .line 723
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    add-int v6, v7, v3

    .line 724
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    sub-int p4, p4, v3

    .line 725
    if-eqz p4, :cond_7

    .line 728
    :goto_8
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .restart local v5    # "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 729
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_f

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 730
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_3

    .line 731
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_f
    add-int/lit8 v10, v10, -0x1

    .line 732
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

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_6

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_10
    const/4 v12, 0x0

    move v13, v12

    goto :goto_9

    :cond_11
    const/4 v12, 0x0

    goto :goto_a

    .line 733
    :cond_12
    if-gez v10, :cond_13

    .line 734
    const/4 v10, 0x0

    .line 735
    :cond_13
    add-int/lit8 v10, v10, 0x2

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_1

    .line 740
    .end local v10    # "minGallop":I
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 741
    :cond_15
    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    .line 648
    :goto_b
    return-void

    .line 743
    :cond_16
    if-nez p2, :cond_17

    .line 744
    new-instance v12, Ljava/lang/IllegalArgumentException;

    .line 745
    const-string/jumbo v13, "Comparison method violates its general contract!"

    .line 744
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 747
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

    .line 748
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

    .line 749
    :cond_1b
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    .restart local v10    # "minGallop":I
    :cond_1c
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_8

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_1d
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto/16 :goto_5
.end method

.method private static minRunLength(I)I
    .locals 3
    .param p0, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 366
    sget-boolean v2, Ljava/util/ComparableTimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 367
    :cond_1
    const/4 v0, 0x0

    .line 368
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_2

    .line 369
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 370
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .prologue
    .line 382
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 383
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    .line 384
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 381
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 340
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    .line 341
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 342
    aget-object v2, p0, v1

    .line 343
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 344
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "hi":I
    .restart local p2    # "hi":I
    aput-object v2, p0, v0

    move v0, p2

    .end local p2    # "hi":I
    .restart local v0    # "hi":I
    move v1, p1

    .end local p1    # "lo":I
    .restart local v1    # "lo":I
    goto :goto_0

    .line 339
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V
    .locals 10
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "work"    # [Ljava/lang/Object;
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 180
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

    .line 182
    :cond_1
    sub-int v3, p2, p1

    .line 183
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    .line 184
    return-void

    .line 187
    :cond_2
    const/16 v6, 0x20

    if-ge v3, v6, :cond_3

    .line 188
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    .line 189
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 190
    return-void

    .line 198
    .end local v1    # "initRunLen":I
    :cond_3
    new-instance v5, Ljava/util/ComparableTimSort;

    invoke-direct {v5, p0, p3, p4, p5}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    .line 199
    .local v5, "ts":Ljava/util/ComparableTimSort;
    invoke-static {v3}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 202
    .local v2, "minRun":I
    :cond_4
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v4

    .line 205
    .local v4, "runLen":I
    if-ge v4, v2, :cond_5

    .line 206
    if-gt v3, v2, :cond_6

    move v0, v3

    .line 207
    .local v0, "force":I
    :goto_1
    add-int v6, p1, v0

    add-int v9, p1, v4

    invoke-static {p0, p1, v6, v9}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 208
    move v4, v0

    .line 212
    .end local v0    # "force":I
    :cond_5
    invoke-direct {v5, p1, v4}, Ljava/util/ComparableTimSort;->pushRun(II)V

    .line 213
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    .line 216
    add-int/2addr p1, v4

    .line 217
    sub-int/2addr v3, v4

    .line 218
    if-nez v3, :cond_4

    .line 221
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

    .line 206
    goto :goto_1

    :cond_7
    move v6, v8

    .line 221
    goto :goto_2

    .line 222
    :cond_8
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    .line 223
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

    .line 179
    :cond_a
    return-void
.end method
