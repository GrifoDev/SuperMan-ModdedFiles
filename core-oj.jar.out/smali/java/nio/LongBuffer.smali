.class public abstract Ljava/nio/LongBuffer;
.super Ljava/nio/Buffer;
.source "LongBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/LongBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[J

.field isReadOnly:Z

.field final offset:I


# direct methods
.method constructor <init>(IIII)V
    .locals 7
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .prologue
    .line 106
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    .line 105
    return-void
.end method

.method constructor <init>(IIII[JI)V
    .locals 6
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [J
    .param p6, "offset"    # I

    .prologue
    .line 98
    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 99
    iput-object p5, p0, Ljava/nio/LongBuffer;->hb:[J

    .line 100
    iput p6, p0, Ljava/nio/LongBuffer;->offset:I

    .line 97
    return-void
.end method

.method public static allocate(I)Ljava/nio/LongBuffer;
    .locals 1
    .param p0, "capacity"    # I

    .prologue
    .line 124
    if-gez p0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_0
    new-instance v0, Ljava/nio/HeapLongBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapLongBuffer;-><init>(II)V

    return-object v0
.end method

.method private static compare(JJ)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 701
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private static equals(JJ)Z
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 661
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wrap([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p0, "array"    # [J

    .prologue
    .line 177
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/nio/LongBuffer;->wrap([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([JII)Ljava/nio/LongBuffer;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 156
    :try_start_0
    new-instance v1, Ljava/nio/HeapLongBuffer;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapLongBuffer;-><init>([JII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

    move-result-object v0

    return-object v0
.end method

.method public final array()[J
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 512
    :cond_0
    iget-boolean v0, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 513
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 514
    :cond_1
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 536
    :cond_0
    iget-boolean v0, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 537
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 538
    :cond_1
    iget v0, p0, Ljava/nio/LongBuffer;->offset:I

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract compact()Ljava/nio/LongBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 688
    check-cast p1, Ljava/nio/LongBuffer;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->compareTo(Ljava/nio/LongBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/LongBuffer;)I
    .locals 8
    .param p1, "that"    # Ljava/nio/LongBuffer;

    .prologue
    .line 689
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v3, v4, v5

    .line 690
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->position()I

    move-result v2

    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 691
    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v4

    invoke-virtual {p1, v2}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/nio/LongBuffer;->compare(JJ)I

    move-result v0

    .line 692
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 693
    return v0

    .line 690
    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "cmp":I
    :cond_1
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v5

    sub-int/2addr v4, v5

    return v4
.end method

.method public abstract duplicate()Ljava/nio/LongBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 644
    if-ne p0, p1, :cond_0

    .line 645
    return v9

    .line 646
    :cond_0
    instance-of v4, p1, Ljava/nio/LongBuffer;

    if-nez v4, :cond_1

    .line 647
    return v8

    :cond_1
    move-object v3, p1

    .line 648
    check-cast v3, Ljava/nio/LongBuffer;

    .line 649
    .local v3, "that":Ljava/nio/LongBuffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->remaining()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 650
    return v8

    .line 651
    :cond_2
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    move-result v2

    .line 652
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->limit()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/LongBuffer;->limit()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_0
    if-lt v0, v2, :cond_4

    .line 653
    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v4

    invoke-virtual {v3, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/nio/LongBuffer;->equals(JJ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 654
    return v8

    .line 652
    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 655
    :cond_4
    return v9
.end method

.method public abstract get()J
.end method

.method public abstract get(I)J
.end method

.method public get([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "dst"    # [J

    .prologue
    .line 358
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 334
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/LongBuffer;->checkBounds(III)V

    .line 335
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_0

    .line 336
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 337
    :cond_0
    add-int v0, p2, p3

    .line 338
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 339
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Ljava/nio/LongBuffer;->hb:[J

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 605
    const/4 v0, 0x1

    .line 606
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    move-result v2

    .line 607
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 608
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v4

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 607
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 609
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(IJ)Ljava/nio/LongBuffer;
.end method

.method public abstract put(J)Ljava/nio/LongBuffer;
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "src"    # Ljava/nio/LongBuffer;

    .prologue
    .line 398
    if-ne p1, p0, :cond_0

    .line 399
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 400
    :cond_0
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    .line 401
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 402
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 403
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 404
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_2
    return-object p0
.end method

.method public final put([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "src"    # [J

    .prologue
    .line 473
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/LongBuffer;->put([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "src"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 448
    array-length v2, p1

    invoke-static {p2, p3, v2}, Ljava/nio/LongBuffer;->checkBounds(III)V

    .line 449
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le p3, v2, :cond_0

    .line 450
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 451
    :cond_0
    add-int v0, p2, p3

    .line 452
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 453
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/LongBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 579
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    const-string/jumbo v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 582
    const-string/jumbo v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 584
    const-string/jumbo v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 586
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
