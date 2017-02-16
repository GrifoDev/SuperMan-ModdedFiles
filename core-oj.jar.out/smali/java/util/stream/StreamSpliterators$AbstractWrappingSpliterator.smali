.class abstract Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_BUFFER:",
        "Ljava/util/stream/AbstractSpinedBuffer;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TP_OUT;>;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/AbstractSpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_BUFFER;"
        }
    .end annotation
.end field

.field bufferSink:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink",
            "<TP_IN;>;"
        }
    .end annotation
.end field

.field finished:Z

.field final isParallel:Z

.field nextToConsume:J

.field final ph:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;"
        }
    .end annotation
.end field

.field pusher:Ljava/util/function/BooleanSupplier;

.field spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TP_IN;>;"
        }
    .end annotation
.end field

.field private spliteratorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V
    .locals 1
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    .line 133
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    .line 134
    iput-boolean p3, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    .line 130
    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .locals 1
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliteratorSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    .line 119
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    .line 121
    iput-boolean p3, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    .line 117
    return-void
.end method

.method private fillBuffer()Z
    .locals 5

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const/4 v4, 0x1

    .line 205
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 206
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :cond_1
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-eqz v0, :cond_2

    .line 208
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_2
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    .line 211
    iput-boolean v4, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    goto :goto_0

    .line 215
    :cond_3
    return v4
.end method


# virtual methods
.method public final characteristics()I
    .locals 2

    .prologue
    .line 237
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    .line 240
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-static {v1}, Ljava/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v1

    invoke-static {v1}, Ljava/util/stream/StreamOpFlag;->toCharacteristics(I)I

    move-result v0

    .line 248
    .local v0, "c":I
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 249
    and-int/lit16 v0, v0, -0x4041

    .line 250
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    move-result v1

    and-int/lit16 v1, v1, 0x4040

    or-int/2addr v0, v1

    .line 253
    :cond_0
    return v0
.end method

.method final doAdvance()Z
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    if-nez v1, :cond_1

    .line 154
    iget-boolean v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-eqz v1, :cond_0

    .line 155
    return v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    .line 158
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->initPartialTraversalState()V

    .line 159
    iput-wide v6, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    .line 160
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 161
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    move-result v1

    return v1

    .line 164
    :cond_1
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    .line 165
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v1}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    const/4 v0, 0x1

    .line 166
    .local v0, "hasNext":Z
    :cond_2
    if-nez v0, :cond_3

    .line 167
    iput-wide v6, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    .line 168
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v1}, Ljava/util/stream/AbstractSpinedBuffer;->clear()V

    .line 169
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    move-result v0

    .line 171
    :cond_3
    return v0
.end method

.method public final estimateSize()J
    .locals 2

    .prologue
    .line 220
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    .line 224
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExactSizeIfKnown()J
    .locals 2

    .prologue
    .line 229
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    .line 230
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    .line 230
    :goto_0
    return-wide v0

    .line 232
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method final init()V
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    .line 143
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    .line 140
    :cond_0
    return-void
.end method

.method abstract initPartialTraversalState()V
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const-string/jumbo v0, "%s[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const/4 v1, 0x0

    .line 189
    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    return-object v1

    .line 190
    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    .line 192
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 193
    .local v0, "split":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-nez v0, :cond_2

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;

    move-result-object v1

    goto :goto_0
.end method

.method abstract wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator",
            "<TP_IN;TP_OUT;*>;"
        }
    .end annotation
.end method
