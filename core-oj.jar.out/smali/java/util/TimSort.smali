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

    .prologue
    const-class v0, Ljava/util/TimSort;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    .line 62
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 7
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;[TT;II)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p3, "work":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v4, 0x7

    iput v4, p0, Ljava/util/TimSort;->minGallop:I

    .line 133
    iput v6, p0, Ljava/util/TimSort;->stackSize:I

    .line 147
    iput-object p1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 148
    iput-object p2, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 151
    array-length v0, p1

    .line 152
    .local v0, "len":I
    const/16 v4, 0x200

    if-ge v0, v4, :cond_1

    .line 153
    ushr-int/lit8 v3, v0, 0x1

    .line 154
    .local v3, "tlen":I
    :goto_0
    if-eqz p3, :cond_0

    if-ge p5, v3, :cond_2

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 156
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 158
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 159
    iput v6, p0, Ljava/util/TimSort;->tmpBase:I

    .line 160
    iput v3, p0, Ljava/util/TimSort;->tmpLen:I

    .line 182
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :goto_1
    const/16 v4, 0x78

    if-ge v0, v4, :cond_3

    const/4 v2, 0x5

    .line 185
    .local v2, "stackLen":I
    :goto_2
    new-array v4, v2, [I

    iput-object v4, p0, Ljava/util/TimSort;->runBase:[I

    .line 186
    new-array v4, v2, [I

    iput-object v4, p0, Ljava/util/TimSort;->runLen:[I

    .line 146
    return-void

    .line 153
    .end local v2    # "stackLen":I
    .end local v3    # "tlen":I
    :cond_1
    const/16 v3, 0x100

    .restart local v3    # "tlen":I
    goto :goto_0

    .line 154
    :cond_2
    add-int v4, p4, v3

    array-length v5, p3

    if-gt v4, v5, :cond_0

    .line 163
    iput-object p3, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 164
    iput p4, p0, Ljava/util/TimSort;->tmpBase:I

    .line 165
    iput p5, p0, Ljava/util/TimSort;->tmpLen:I

    goto :goto_1

    .line 183
    :cond_3
    const/16 v4, 0x606

    if-ge v0, v4, :cond_4

    const/16 v2, 0xa

    goto :goto_2

    .line 184
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
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 279
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

    .line 280
    :cond_1
    if-ne p3, p1, :cond_2

    .line 281
    add-int/lit8 p3, p3, 0x1

    .line 282
    :cond_2
    :goto_1
    if-ge p3, p2, :cond_9

    .line 283
    aget-object v3, p0, p3

    .line 286
    .local v3, "pivot":Ljava/lang/Object;, "TT;"
    move v0, p1

    .line 287
    .local v0, "left":I
    move v4, p3

    .line 288
    .local v4, "right":I
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

    .line 294
    :cond_4
    :goto_3
    if-ge v0, v4, :cond_6

    .line 295
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 296
    .local v1, "mid":I
    aget-object v5, p0, v1

    invoke-interface {p4, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    .line 297
    move v4, v1

    goto :goto_3

    .line 299
    :cond_5
    add-int/lit8 v0, v1, 0x1

    goto :goto_3

    .line 301
    .end local v1    # "mid":I
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

    .line 310
    :cond_8
    sub-int v2, p3, v0

    .line 312
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    .line 316
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    :goto_5
    aput-object v3, p0, v0

    .line 282
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 313
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v8, v0, 0x1

    aget-object v8, p0, v8

    aput-object v8, p0, v5

    .line 314
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    aget-object v8, p0, v0

    aput-object v8, p0, v5

    goto :goto_5

    .line 278
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Object;, "TT;"
    .end local v4    # "right":I
    :cond_9
    return-void

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 5
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    sget-boolean v4, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-ge p1, p2, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 350
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 351
    .local v0, "runHi":I
    if-ne v0, p2, :cond_2

    .line 352
    return v3

    .line 355
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    aget-object v3, p0, p1

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    move v0, v1

    .line 356
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_3
    invoke-static {p0, p1, v0}, Ljava/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 364
    :cond_4
    sub-int v2, v0, p1

    return v2

    .line 360
    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 361
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    const/4 v3, 0x0

    .line 917
    iget v2, p0, Ljava/util/TimSort;->tmpLen:I

    if-ge v2, p1, :cond_0

    .line 919
    move v1, p1

    .line 920
    .local v1, "newSize":I
    shr-int/lit8 v2, p1, 0x1

    or-int v1, p1, v2

    .line 921
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 922
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 923
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 924
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 925
    add-int/lit8 v1, v1, 0x1

    .line 927
    if-gez v1, :cond_1

    .line 928
    move v1, p1

    .line 934
    :goto_0
    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 933
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 935
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v0, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 936
    iput v1, p0, Ljava/util/TimSort;->tmpLen:I

    .line 937
    iput v3, p0, Ljava/util/TimSort;->tmpBase:I

    .line 939
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "newSize":I
    :cond_0
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 930
    .restart local v1    # "newSize":I
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
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 539
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

    .line 540
    :cond_1
    const/4 v0, 0x0

    .line 541
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    .line 542
    .local v3, "ofs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_5

    .line 544
    sub-int v2, p3, p4

    .line 545
    .local v2, "maxOfs":I
    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    .line 546
    move v0, v3

    .line 547
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 548
    if-gtz v3, :cond_2

    .line 549
    move v3, v2

    goto :goto_1

    .line 551
    :cond_3
    if-le v3, v2, :cond_4

    .line 552
    move v3, v2

    .line 555
    :cond_4
    add-int/2addr v0, p4

    .line 556
    add-int/2addr v3, p4

    .line 574
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

    .line 559
    .end local v2    # "maxOfs":I
    :cond_5
    add-int/lit8 v2, p4, 0x1

    .line 560
    .restart local v2    # "maxOfs":I
    :cond_6
    :goto_4
    if-ge v3, v2, :cond_7

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_7

    .line 561
    move v0, v3

    .line 562
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 563
    if-gtz v3, :cond_6

    .line 564
    move v3, v2

    goto :goto_4

    .line 566
    :cond_7
    if-le v3, v2, :cond_8

    .line 567
    move v3, v2

    .line 570
    :cond_8
    move v4, v0

    .line 571
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 572
    sub-int v3, p4, v4

    goto :goto_2

    .end local v4    # "tmp":I
    :cond_9
    move v5, v7

    .line 574
    goto :goto_3

    .line 581
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 582
    :goto_5
    if-ge v0, v3, :cond_c

    .line 583
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 585
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_b

    .line 586
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 588
    :cond_b
    move v3, v1

    goto :goto_5

    .line 590
    .end local v1    # "m":I
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

    .line 591
    :cond_e
    return v3
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 8
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 609
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

    .line 611
    :cond_1
    const/4 v3, 0x1

    .line 612
    .local v3, "ofs":I
    const/4 v0, 0x0

    .line 613
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    .line 615
    add-int/lit8 v2, p4, 0x1

    .line 616
    .local v2, "maxOfs":I
    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    .line 617
    move v0, v3

    .line 618
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 619
    if-gtz v3, :cond_2

    .line 620
    move v3, v2

    goto :goto_1

    .line 622
    :cond_3
    if-le v3, v2, :cond_4

    .line 623
    move v3, v2

    .line 626
    :cond_4
    move v4, v0

    .line 627
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 628
    sub-int v3, p4, v4

    .line 645
    .end local v4    # "tmp":I
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

    .line 631
    .end local v2    # "maxOfs":I
    :cond_5
    sub-int v2, p3, p4

    .line 632
    .restart local v2    # "maxOfs":I
    :cond_6
    :goto_4
    if-ge v3, v2, :cond_7

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_7

    .line 633
    move v0, v3

    .line 634
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 635
    if-gtz v3, :cond_6

    .line 636
    move v3, v2

    goto :goto_4

    .line 638
    :cond_7
    if-le v3, v2, :cond_8

    .line 639
    move v3, v2

    .line 642
    :cond_8
    add-int/2addr v0, p4

    .line 643
    add-int/2addr v3, p4

    goto :goto_2

    :cond_9
    move v5, v7

    .line 645
    goto :goto_3

    .line 652
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 653
    :goto_5
    if-ge v0, v3, :cond_c

    .line 654
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 656
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_b

    .line 657
    move v3, v1

    goto :goto_5

    .line 659
    :cond_b
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 661
    .end local v1    # "m":I
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

    .line 662
    :cond_e
    return v3
.end method

.method private mergeAt(I)V
    .locals 13
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 469
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

    .line 470
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

    .line 471
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

    .line 473
    :cond_6
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    aget v2, v0, p1

    .line 474
    .local v2, "base1":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    aget v3, v0, p1

    .line 475
    .local v3, "len1":I
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    .line 476
    .local v7, "base2":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v8, v0, v1

    .line 477
    .local v8, "len2":I
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

    .line 478
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

    .line 485
    :cond_a
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int v1, v3, v8

    aput v1, v0, p1

    .line 486
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_b

    .line 487
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v5, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x2

    aget v5, v5, v6

    aput v5, v0, v1

    .line 488
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v5, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x2

    aget v5, v5, v6

    aput v5, v0, v1

    .line 490
    :cond_b
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 496
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v7

    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v0 .. v5}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v11

    .line 497
    .local v11, "k":I
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

    .line 498
    :cond_d
    add-int/2addr v2, v11

    .line 499
    sub-int/2addr v3, v11

    .line 500
    if-nez v3, :cond_e

    .line 501
    return-void

    .line 507
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

    .line 508
    sget-boolean v0, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v0, :cond_10

    if-ltz v8, :cond_f

    move v4, v12

    :cond_f
    if-nez v4, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 509
    :cond_10
    if-nez v8, :cond_11

    .line 510
    return-void

    .line 513
    :cond_11
    if-gt v3, v8, :cond_12

    .line 514
    invoke-direct {p0, v2, v3, v7, v8}, Ljava/util/TimSort;->mergeLo(IIII)V

    .line 468
    :goto_6
    return-void

    .line 516
    :cond_12
    invoke-direct {p0, v2, v3, v7, v8}, Ljava/util/TimSort;->mergeHi(IIII)V

    goto :goto_6
.end method

.method private mergeCollapse()V
    .locals 5

    .prologue
    .line 434
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 435
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 436
    .local v0, "n":I
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

    .line 437
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    .line 438
    add-int/lit8 v0, v0, -0x1

    .line 439
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    .line 441
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 433
    .end local v0    # "n":I
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .prologue
    .line 453
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 454
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 455
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    .line 456
    add-int/lit8 v0, v0, -0x1

    .line 457
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 452
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 23
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 798
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
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

    .line 801
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 802
    .local v3, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    .line 803
    .local v9, "tmp":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/TimSort;->tmpBase:I

    .line 804
    .local v10, "tmpBase":I
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v3, v0, v9, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    add-int v2, p1, p2

    add-int/lit8 v16, v2, -0x1

    .line 807
    .local v16, "cursor1":I
    add-int v2, v10, p4

    add-int/lit8 v18, v2, -0x1

    .line 808
    .local v18, "cursor2":I
    add-int v2, p3, p4

    add-int/lit8 v20, v2, -0x1

    .line 811
    .local v20, "dest":I
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .local v21, "dest":I
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "cursor1":I
    .local v17, "cursor1":I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 812
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_2

    .line 813
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v21, v2

    move/from16 v0, p4

    invoke-static {v9, v10, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    return-void

    .line 816
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    .line 817
    sub-int v20, v21, p2

    .line 818
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v16, v17, p2

    .line 819
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 821
    return-void

    .line 824
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 825
    .local v7, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v22, v0

    .local v22, "minGallop":I
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 828
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :goto_1
    const/4 v14, 0x0

    .line 829
    .local v14, "count1":I
    const/4 v15, 0x0

    .line 836
    .local v15, "count2":I
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

    .line 837
    :cond_6
    aget-object v2, v9, v18

    aget-object v4, v3, v16

    invoke-interface {v7, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_9

    .line 838
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 839
    add-int/lit8 v14, v14, 0x1

    .line 840
    const/4 v15, 0x0

    .line 841
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_1d

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 890
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :cond_7
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ge v0, v2, :cond_8

    const/16 v22, 0x1

    .end local v22    # "minGallop":I
    :cond_8
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    .line 892
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_16

    .line 893
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_15

    if-lez p2, :cond_14

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 844
    .restart local v22    # "minGallop":I
    :cond_9
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    .end local v18    # "cursor2":I
    .local v19, "cursor2":I
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 845
    add-int/lit8 v15, v15, 0x1

    .line 846
    const/4 v14, 0x0

    .line 847
    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_a

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .line 848
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_3

    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_a
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .line 850
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    :goto_5
    or-int v2, v14, v15

    move/from16 v0, v22

    if-lt v2, v0, :cond_4

    .line 858
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

    .line 859
    :cond_c
    aget-object v2, v9, v18

    add-int/lit8 v6, p2, -0x1

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v14, p2, v2

    .line 860
    if-eqz v14, :cond_d

    .line 861
    sub-int v20, v20, v14

    .line 862
    sub-int v16, v16, v14

    .line 863
    sub-int p2, p2, v14

    .line 864
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v3, v2, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    if-eqz p2, :cond_7

    .line 868
    :cond_d
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    .end local v18    # "cursor2":I
    .restart local v19    # "cursor2":I
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 869
    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_e

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .line 870
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto/16 :goto_3

    .line 872
    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_e
    aget-object v8, v3, v16

    add-int/lit8 v12, p4, -0x1

    move/from16 v11, p4

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v15, p4, v2

    .line 873
    if-eqz v15, :cond_1c

    .line 874
    sub-int v20, v21, v15

    .line 875
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v18, v19, v15

    .line 876
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    sub-int p4, p4, v15

    .line 877
    add-int/lit8 v2, v18, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v9, v2, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_7

    .line 881
    :goto_8
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 882
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_f

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 883
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_3

    .line 884
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_f
    add-int/lit8 v22, v22, -0x1

    .line 885
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

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_6

    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_10
    const/4 v2, 0x0

    move v4, v2

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_a

    .line 886
    :cond_12
    if-gez v22, :cond_13

    .line 887
    const/16 v22, 0x0

    .line 888
    :cond_13
    add-int/lit8 v22, v22, 0x2

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_1

    .line 893
    .end local v22    # "minGallop":I
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 894
    :cond_15
    sub-int v20, v20, p2

    .line 895
    sub-int v16, v16, p2

    .line 896
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 797
    :goto_b
    return-void

    .line 898
    :cond_16
    if-nez p4, :cond_17

    .line 899
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 900
    const-string/jumbo v4, "Comparison method violates its general contract!"

    .line 899
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 902
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

    .line 903
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

    .line 904
    :cond_1b
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v20, v2

    move/from16 v0, p4

    invoke-static {v9, v10, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    .restart local v22    # "minGallop":I
    :cond_1c
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto/16 :goto_8

    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_1d
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_5
.end method

.method private mergeLo(IIII)V
    .locals 21
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 682
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
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

    .line 685
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 686
    .local v9, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v3

    .line 687
    .local v3, "tmp":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/TimSort;->tmpBase:I

    .line 688
    .local v4, "cursor1":I
    move/from16 v10, p3

    .line 689
    .local v10, "cursor2":I
    move/from16 v18, p1

    .line 690
    .local v18, "dest":I
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v9, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    add-int/lit8 v18, p1, 0x1

    add-int/lit8 v10, p3, 0x1

    aget-object v2, v9, p3

    aput-object v2, v9, p1

    .line 694
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_2

    .line 695
    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v3, v4, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    return-void

    .line 698
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 699
    move/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v9, v10, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    add-int v2, v18, p4

    aget-object v5, v3, v4

    aput-object v5, v9, v2

    .line 701
    return-void

    .line 704
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 705
    .local v7, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v20, v0

    .line 708
    .local v20, "minGallop":I
    :goto_1
    const/4 v14, 0x0

    .line 709
    .local v14, "count1":I
    const/4 v15, 0x0

    .line 716
    .local v15, "count2":I
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

    .line 717
    :cond_6
    aget-object v2, v9, v10

    aget-object v5, v3, v4

    invoke-interface {v7, v2, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_9

    .line 718
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "dest":I
    .local v19, "dest":I
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "cursor2":I
    .local v17, "cursor2":I
    aget-object v2, v9, v10

    aput-object v2, v9, v18

    .line 719
    add-int/lit8 v15, v15, 0x1

    .line 720
    const/4 v14, 0x0

    .line 721
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_1d

    move/from16 v18, v19

    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v10, v17

    .line 770
    .end local v17    # "cursor2":I
    .restart local v10    # "cursor2":I
    :cond_7
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ge v0, v2, :cond_8

    const/16 v20, 0x1

    .end local v20    # "minGallop":I
    :cond_8
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    .line 772
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_16

    .line 773
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_15

    if-lez p4, :cond_14

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 724
    .restart local v20    # "minGallop":I
    :cond_9
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "cursor1":I
    .local v16, "cursor1":I
    aget-object v2, v3, v4

    aput-object v2, v9, v18

    .line 725
    add-int/lit8 v14, v14, 0x1

    .line 726
    const/4 v15, 0x0

    .line 727
    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    move/from16 v18, v19

    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v4, v16

    .line 728
    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_3

    .end local v4    # "cursor1":I
    .end local v18    # "dest":I
    .restart local v16    # "cursor1":I
    .restart local v19    # "dest":I
    :cond_a
    move/from16 v18, v19

    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v4, v16

    .line 730
    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    :goto_5
    or-int v2, v14, v15

    move/from16 v0, v20

    if-lt v2, v0, :cond_4

    move/from16 v17, v10

    .line 738
    .end local v10    # "cursor2":I
    .restart local v17    # "cursor2":I
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

    .line 739
    :cond_c
    aget-object v2, v9, v17

    const/4 v6, 0x0

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v14

    .line 740
    if-eqz v14, :cond_d

    .line 741
    move/from16 v0, v18

    invoke-static {v3, v4, v9, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    add-int v18, v18, v14

    .line 743
    add-int/2addr v4, v14

    .line 744
    sub-int p2, p2, v14

    .line 745
    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_d

    move/from16 v10, v17

    .line 746
    .end local v17    # "cursor2":I
    .restart local v10    # "cursor2":I
    goto :goto_3

    .line 748
    .end local v10    # "cursor2":I
    .restart local v17    # "cursor2":I
    :cond_d
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    add-int/lit8 v10, v17, 0x1

    .end local v17    # "cursor2":I
    .restart local v10    # "cursor2":I
    aget-object v2, v9, v17

    aput-object v2, v9, v18

    .line 749
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_e

    move/from16 v18, v19

    .line 750
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    goto/16 :goto_3

    .line 752
    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    :cond_e
    aget-object v8, v3, v4

    const/4 v12, 0x0

    move/from16 v11, p4

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v15

    .line 753
    if-eqz v15, :cond_1c

    .line 754
    move/from16 v0, v19

    invoke-static {v9, v10, v9, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    add-int v18, v19, v15

    .line 756
    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    add-int/2addr v10, v15

    .line 757
    sub-int p4, p4, v15

    .line 758
    if-eqz p4, :cond_7

    .line 761
    :goto_8
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "cursor1":I
    .restart local v16    # "cursor1":I
    aget-object v2, v3, v4

    aput-object v2, v9, v18

    .line 762
    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_f

    move/from16 v18, v19

    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v4, v16

    .line 763
    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_3

    .line 764
    .end local v4    # "cursor1":I
    .end local v18    # "dest":I
    .restart local v16    # "cursor1":I
    .restart local v19    # "dest":I
    :cond_f
    add-int/lit8 v20, v20, -0x1

    .line 765
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

    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v17, v10

    .end local v10    # "cursor2":I
    .restart local v17    # "cursor2":I
    move/from16 v4, v16

    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_6

    .end local v4    # "cursor1":I
    .end local v17    # "cursor2":I
    .end local v18    # "dest":I
    .restart local v10    # "cursor2":I
    .restart local v16    # "cursor1":I
    .restart local v19    # "dest":I
    :cond_10
    const/4 v2, 0x0

    move v5, v2

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_a

    .line 766
    :cond_12
    if-gez v20, :cond_13

    .line 767
    const/16 v20, 0x0

    .line 768
    :cond_13
    add-int/lit8 v20, v20, 0x2

    move/from16 v18, v19

    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v4, v16

    .end local v16    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_1

    .line 773
    .end local v20    # "minGallop":I
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 774
    :cond_15
    move/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v9, v10, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    add-int v2, v18, p4

    aget-object v5, v3, v4

    aput-object v5, v9, v2

    .line 681
    :goto_b
    return-void

    .line 776
    :cond_16
    if-nez p2, :cond_17

    .line 777
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 778
    const-string/jumbo v5, "Comparison method violates its general contract!"

    .line 777
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 780
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

    .line 781
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

    .line 782
    :cond_1b
    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v3, v4, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .end local v18    # "dest":I
    .restart local v19    # "dest":I
    .restart local v20    # "minGallop":I
    :cond_1c
    move/from16 v18, v19

    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    goto/16 :goto_8

    .end local v10    # "cursor2":I
    .end local v18    # "dest":I
    .restart local v17    # "cursor2":I
    .restart local v19    # "dest":I
    :cond_1d
    move/from16 v18, v19

    .end local v19    # "dest":I
    .restart local v18    # "dest":I
    move/from16 v10, v17

    .end local v17    # "cursor2":I
    .restart local v10    # "cursor2":I
    goto/16 :goto_5
.end method

.method private static minRunLength(I)I
    .locals 3
    .param p0, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 401
    sget-boolean v2, Ljava/util/TimSort;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 402
    :cond_1
    const/4 v0, 0x0

    .line 403
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_2

    .line 404
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 405
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 407
    :cond_2
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .prologue
    .line 417
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 418
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p2, v0, v1

    .line 419
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 416
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 375
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    .line 376
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 377
    aget-object v2, p0, v1

    .line 378
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 379
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

    .line 374
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 11
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p5, "workBase"    # I
    .param p6, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;[TT;II)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p4, "work":[Ljava/lang/Object;, "[TT;"
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

    .line 214
    :cond_1
    sub-int v9, p2, p1

    .line 215
    .local v9, "nRemaining":I
    const/4 v1, 0x2

    if-ge v9, v1, :cond_2

    .line 216
    return-void

    .line 219
    :cond_2
    const/16 v1, 0x20

    if-ge v9, v1, :cond_3

    .line 220
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v7

    .line 221
    .local v7, "initRunLen":I
    add-int v1, p1, v7

    invoke-static {p0, p1, p2, v1, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 222
    return-void

    .line 230
    .end local v7    # "initRunLen":I
    :cond_3
    new-instance v0, Ljava/util/TimSort;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V

    .line 231
    .local v0, "ts":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    invoke-static {v9}, Ljava/util/TimSort;->minRunLength(I)I

    move-result v8

    .line 234
    .local v8, "minRun":I
    :cond_4
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v10

    .line 237
    .local v10, "runLen":I
    if-ge v10, v8, :cond_5

    .line 238
    if-gt v9, v8, :cond_6

    move v6, v9

    .line 239
    .local v6, "force":I
    :goto_1
    add-int v1, p1, v6

    add-int v2, p1, v10

    invoke-static {p0, p1, v1, v2, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 240
    move v10, v6

    .line 244
    .end local v6    # "force":I
    :cond_5
    invoke-direct {v0, p1, v10}, Ljava/util/TimSort;->pushRun(II)V

    .line 245
    invoke-direct {v0}, Ljava/util/TimSort;->mergeCollapse()V

    .line 248
    add-int/2addr p1, v10

    .line 249
    sub-int/2addr v9, v10

    .line 250
    if-nez v9, :cond_4

    .line 253
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

    .line 238
    goto :goto_1

    .line 253
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 254
    :cond_8
    invoke-direct {v0}, Ljava/util/TimSort;->mergeForceCollapse()V

    .line 255
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

    .line 211
    :cond_a
    return-void
.end method
