.class public Ljava/util/stream/SpinedBuffer$OfInt;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 728
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 731
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-direct {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    .line 730
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 771
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->preAccept()V

    .line 772
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    aput p1, v0, v1

    .line 770
    return-void
.end method

.method protected bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 762
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    check-cast p1, [I

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p4, Ljava/util/function/IntConsumer;

    .end local p4    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfInt;->arrayForEach([IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method protected arrayForEach([IIILjava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "array"    # [I
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 765
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 766
    aget v1, p1, v0

    invoke-interface {p4, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 764
    :cond_0
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 757
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    check-cast p1, [I

    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->arrayLength([I)I

    move-result v0

    return v0
.end method

.method protected arrayLength([I)I
    .locals 1
    .param p1, "array"    # [I

    .prologue
    .line 758
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    array-length v0, p1

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 737
    check-cast p1, Ljava/util/function/IntConsumer;

    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    .line 735
    :goto_0
    return-void

    .line 740
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling SpinedBuffer.OfInt.forEach(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 742
    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_0
.end method

.method public get(J)I
    .locals 5
    .param p1, "index"    # J

    .prologue
    .line 778
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->chunkFor(J)I

    move-result v0

    .line 779
    .local v0, "ch":I
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 780
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    check-cast v1, [I

    long-to-int v2, p1

    aget v1, v1, v2

    return v1

    .line 782
    :cond_0
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    check-cast v1, [[I

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget v1, v1, v2

    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 786
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/PrimitiveIterator$OfInt;
    .locals 1

    .prologue
    .line 787
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 752
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->newArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 753
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    new-array v0, p1, [I

    return-object v0
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 747
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->newArrayArray(I)[[I

    move-result-object v0

    return-object v0
.end method

.method protected newArrayArray(I)[[I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 748
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    new-array v0, p1, [[I

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfInt;
    .locals 6

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    const/4 v2, 0x0

    .line 816
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    iget v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 790
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 821
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 822
    .local v0, "array":[I
    array-length v2, v0

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_0

    .line 823
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 824
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 825
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 823
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 828
    :cond_0
    const/16 v2, 0xc8

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 829
    .local v1, "array2":[I
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s..."

    new-array v3, v4, [Ljava/lang/Object;

    .line 830
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 831
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 829
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
