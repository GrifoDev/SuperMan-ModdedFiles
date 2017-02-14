.class public abstract Ljava/util/stream/SpinedBuffer$OfPrimitive;
.super Ljava/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractSpinedBuffer;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field curChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field spine:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/stream/AbstractSpinedBuffer;-><init>()V

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/stream/AbstractSpinedBuffer;-><init>(I)V

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    return-void
.end method

.method private inflateSpine()V
    .locals 3

    const/16 v1, 0x8

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArrayArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    new-array v0, v1, [J

    iput-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;IITT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract arrayLength(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;)I"
        }
    .end annotation
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    long-to-int v1, v2

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-object v0
.end method

.method protected capacity()J
    .locals 4

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method protected chunkFor(J)I
    .locals 7

    const/4 v4, 0x0

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v1, :cond_1

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    return v4

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-gt v0, v1, :cond_4

    iget-object v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    :cond_0
    iput v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    iput v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    return-void
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation

    const/4 v8, 0x0

    int-to-long v4, p2

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v6

    add-long v0, v4, v6

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    int-to-long v4, p2

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v4, "does not fit"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v3, :cond_3

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-lez v3, :cond_2

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public bridge synthetic count()J
    .locals 2

    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final ensureCapacity(J)V
    .locals 11

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    cmp-long v5, p1, v0

    if-lez v5, :cond_1

    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    iget v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v2, v5, 0x1

    :goto_0
    cmp-long v5, p1, v0

    if-lez v5, :cond_1

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v5, v5

    if-lt v2, v5, :cond_0

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v5, v5

    mul-int/lit8 v3, v5, 0x2

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/stream/AbstractSpinedBuffer;->chunkSize(I)I

    move-result v4

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget-object v6, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    add-int/lit8 v7, v2, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, v2

    int-to-long v6, v4

    add-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    invoke-virtual {p0, v1, v3, v2, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation
.end method

.method protected increaseCapacity()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method protected abstract newArrayArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT_ARR;"
        }
    .end annotation
.end method

.method protected preAccept()V
    .locals 2

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->increaseCapacity()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    :cond_2
    return-void
.end method
