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

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    sput v0, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

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

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    iget-object v0, p1, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-wide v0, p1, Ljava/util/stream/AbstractTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p1, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    return-void
.end method

.method public static suggestTargetSize(J)J
    .locals 4

    sget v2, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    int-to-long v2, v2

    div-long v0, p0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compute()V
    .locals 12

    iget-object v4, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/util/stream/AbstractTask;->getTargetSize(J)J

    move-result-wide v8

    const/4 v0, 0x0

    move-object v5, p0

    :goto_0
    cmp-long v11, v6, v8

    if-lez v11, :cond_1

    invoke-interface {v4}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v1

    iput-object v1, v5, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    invoke-virtual {v5, v4}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v3

    iput-object v3, v5, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v2

    move-object v5, v1

    move-object v10, v3

    :goto_1
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move-object v5, v3

    move-object v10, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

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

    iget-object v0, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected final getTargetSize(J)J
    .locals 5

    iget-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1, p2}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/AbstractTask;->targetSize:J

    goto :goto_0
.end method

.method protected isLeaf()Z
    .locals 1

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

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    if-eq v2, v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method protected isRoot()Z
    .locals 1

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

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    iput-object v0, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    iput-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    return-void
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
