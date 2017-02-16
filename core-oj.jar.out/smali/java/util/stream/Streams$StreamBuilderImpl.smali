.class final Ljava/util/stream/Streams$StreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/Stream$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;>;",
        "Ljava/util/stream/Stream$Builder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/SpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/SpinedBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 343
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    .line 351
    iput-object p1, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    .line 352
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 350
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 360
    iput-object p1, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    .line 361
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 358
    :goto_0
    return-void

    .line 363
    :cond_0
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 364
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    if-nez v0, :cond_1

    .line 365
    new-instance v0, Ljava/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer;-><init>()V

    iput-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    .line 366
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    iget-object v1, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 367
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 370
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/stream/Stream$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$StreamBuilderImpl;->accept(Ljava/lang/Object;)V

    .line 379
    return-object p0
.end method

.method public build()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    const/4 v2, 0x0

    .line 384
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 385
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 387
    iget v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 390
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    .line 393
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 415
    :cond_0
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 406
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 407
    const/4 v0, 0x1

    return v0

    .line 410
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
