.class public Ljava/util/stream/SpinedBuffer;
.super Ljava/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SpinedBuffer$-java_lang_String_toString__LambdaImpl0;,
        Ljava/util/stream/SpinedBuffer$OfDouble;,
        Ljava/util/stream/SpinedBuffer$OfInt;,
        Ljava/util/stream/SpinedBuffer$OfLong;,
        Ljava/util/stream/SpinedBuffer$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractSpinedBuffer;",
        "Ljava/util/function/Consumer",
        "<TE;>;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final SPLITERATOR_CHARACTERISTICS:I = 0x4050


# instance fields
.field protected curChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected spine:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TE;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_SpinedBuffer-mthref-0(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/stream/AbstractSpinedBuffer;-><init>()V

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/stream/AbstractSpinedBuffer;-><init>(I)V

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    return-void
.end method

.method private inflateSpine()V
    .locals 3

    const/16 v1, 0x8

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_0

    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    new-array v0, v1, [J

    iput-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;->inflateSpine()V

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->increaseCapacity()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    aput-object p1, v0, v1

    return-void
.end method

.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TE;>;)[TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

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

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    return-object v0
.end method

.method protected capacity()J
    .locals 4

    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    aget-object v2, v2, v3

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v3

    iput-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    :cond_1
    iput v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    iput v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    const/4 v8, 0x0

    int-to-long v4, p2

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    move-result-wide v6

    add-long v0, v4, v6

    array-length v3, p1

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

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

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

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v4, v4, v2

    array-length v4, v4

    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    array-length v3, v3

    add-int/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-lez v3, :cond_2

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

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

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    cmp-long v5, p1, v0

    if-lez v5, :cond_1

    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;->inflateSpine()V

    iget v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v2, v5, 0x1

    :goto_0
    cmp-long v5, p1, v0

    if-lez v5, :cond_1

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v5, v5

    if-lt v2, v5, :cond_0

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v5, v5

    mul-int/lit8 v3, v5, 0x2

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/Object;

    iput-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/stream/AbstractSpinedBuffer;->chunkSize(I)I

    move-result v4

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v6, v5, v2

    iget-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    iget-object v6, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    add-int/lit8 v7, v2, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    array-length v8, v8

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

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v4, v3, v1

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v1, :cond_1

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    long-to-int v2, p1

    aget-object v1, v1, v2

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

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

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    array-length v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget-object v1, v1, v2

    return-object v1

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

.method protected increaseCapacity()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer;->ensureCapacity(J)V

    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/stream/SpinedBuffer$1Splitr;

    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    iget v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer;IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/stream/SpinedBuffer$-java_lang_String_toString__LambdaImpl0;

    invoke-direct {v1, v0}, Ljava/util/stream/SpinedBuffer$-java_lang_String_toString__LambdaImpl0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SpinedBuffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
