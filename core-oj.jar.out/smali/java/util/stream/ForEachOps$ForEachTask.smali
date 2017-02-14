.class final Ljava/util/stream/ForEachOps$ForEachTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final sink:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink",
            "<TS;>;"
        }
    .end annotation
.end field

.field private spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TS;>;"
        }
    .end annotation
.end field

.field private targetSize:J


# direct methods
.method constructor <init>(Ljava/util/stream/ForEachOps$ForEachTask;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ForEachOps$ForEachTask",
            "<TS;TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    iget-wide v0, p1, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;",
            "Ljava/util/stream/Sink",
            "<TS;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    return-void
.end method


# virtual methods
.method public compute()V
    .locals 15

    const/4 v14, 0x0

    iget-object v4, p0, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    iget-wide v8, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_0

    invoke-static {v6, v7}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v8

    iput-wide v8, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    :cond_0
    sget-object v12, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    iget-object v13, p0, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v13}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    const/4 v0, 0x0

    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    move-object v5, p0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_1
    iput-object v14, v5, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void

    :cond_1
    cmp-long v12, v6, v8

    if-lez v12, :cond_2

    invoke-interface {v4}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v12, v5, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v12, v10, v4}, Ljava/util/stream/PipelineHelper;->copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/stream/ForEachOps$ForEachTask;

    invoke-direct {v3, v5, v2}, Ljava/util/stream/ForEachOps$ForEachTask;-><init>(Ljava/util/stream/ForEachOps$ForEachTask;Ljava/util/Spliterator;)V

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move-object v4, v2

    move-object v11, v5

    move-object v5, v3

    :goto_2
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    move-object v11, v3

    goto :goto_2
.end method
