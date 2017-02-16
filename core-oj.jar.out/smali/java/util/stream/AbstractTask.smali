.class abstract Ljava/util/stream/AbstractTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "AbstractTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/util/stream/AbstractTask",
        "<TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final LEAF_TARGET:I


# instance fields
.field protected final helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;"
        }
    .end annotation
.end field

.field protected leftChild:Ljava/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private localResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field protected rightChild:Ljava/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TP_IN;>;"
        }
    .end annotation
.end field

.field protected targetSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    sput v0, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    .line 87
    return-void
.end method

.method protected constructor <init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "parent":Ljava/util/stream/AbstractTask;, "TK;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 154
    iput-object p2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    .line 155
    iget-object v0, p1, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 156
    iget-wide v0, p1, Ljava/util/stream/AbstractTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    .line 152
    return-void
.end method

.method protected constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 139
    iput-object p1, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 140
    iput-object p2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    .line 137
    return-void
.end method

.method public static suggestTargetSize(J)J
    .locals 4
    .param p0, "sizeEstimate"    # J

    .prologue
    .line 184
    sget v2, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    int-to-long v2, v2

    div-long v0, p0, v2

    .line 185
    .local v0, "est":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .end local v0    # "est":J
    :goto_0
    return-wide v0

    .restart local v0    # "est":J
    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compute()V
    .locals 12

    .prologue
    .line 292
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v4, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    .line 293
    .local v4, "rs":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    .line 294
    .local v6, "sizeEstimate":J
    invoke-virtual {p0, v6, v7}, Ljava/util/stream/AbstractTask;->getTargetSize(J)J

    move-result-wide v8

    .line 295
    .local v8, "sizeThreshold":J
    const/4 v0, 0x0

    .line 296
    .local v0, "forkRight":Z
    move-object v5, p0

    .line 297
    .local v5, "task":Ljava/util/stream/AbstractTask;, "TK;"
    :goto_0
    cmp-long v11, v6, v8

    if-lez v11, :cond_1

    invoke-interface {v4}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v2

    .local v2, "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-eqz v2, :cond_1

    .line 299
    invoke-virtual {v5, v2}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v1

    .local v1, "leftChild":Ljava/util/stream/AbstractTask;, "TK;"
    iput-object v1, v5, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 300
    invoke-virtual {v5, v4}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v3

    .local v3, "rightChild":Ljava/util/stream/AbstractTask;, "TK;"
    iput-object v3, v5, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    .line 301
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    .line 302
    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 304
    move-object v4, v2

    .line 305
    move-object v5, v1

    .line 306
    move-object v10, v3

    .line 313
    .local v10, "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    :goto_1
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 314
    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    goto :goto_0

    .line 309
    .end local v10    # "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    :cond_0
    const/4 v0, 0x1

    .line 310
    move-object v5, v3

    .line 311
    move-object v10, v1

    .restart local v10    # "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    goto :goto_1

    .line 316
    .end local v1    # "leftChild":Ljava/util/stream/AbstractTask;, "TK;"
    .end local v2    # "ls":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local v3    # "rightChild":Ljava/util/stream/AbstractTask;, "TK;"
    .end local v10    # "taskToFork":Ljava/util/stream/AbstractTask;, "TK;"
    :cond_1
    invoke-virtual {v5}, Ljava/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 291
    return-void
.end method

.method protected abstract doLeaf()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected getLocalResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected getParent()Ljava/util/stream/AbstractTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava/util/stream/AbstractTask;

    return-object v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected final getTargetSize(J)J
    .locals 5
    .param p1, "sizeEstimate"    # J

    .prologue
    .line 194
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    .local v0, "s":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .end local v0    # "s":J
    :goto_0
    return-wide v0

    .line 195
    .restart local v0    # "s":J
    :cond_0
    invoke-static {p1, p2}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    .end local v0    # "s":J
    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    goto :goto_0
.end method

.method protected isLeaf()Z
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLeftmostNode()Z
    .locals 3

    .prologue
    .line 343
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    move-object v0, p0

    .line 344
    .local v0, "node":Ljava/util/stream/AbstractTask;, "TK;"
    :goto_0
    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    .line 346
    .local v1, "parent":Ljava/util/stream/AbstractTask;, "TK;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    if-eq v2, v0, :cond_0

    .line 347
    const/4 v2, 0x0

    return v2

    .line 348
    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 350
    .end local v1    # "parent":Ljava/util/stream/AbstractTask;, "TK;"
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method protected isRoot()Z
    .locals 1

    .prologue
    .line 264
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)TK;"
        }
    .end annotation
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    .line 331
    iput-object v0, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    iput-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 329
    return-void
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "localResult":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    .line 242
    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Ljava/util/stream/AbstractTask;, "Ljava/util/stream/AbstractTask<TP_IN;TP_OUT;TR;TK;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    if-eqz p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 221
    :cond_0
    return-void
.end method
