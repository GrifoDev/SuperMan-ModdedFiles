.class final Ljava/util/stream/ForEachOps$ForEachOrderedTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachOrderedTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ForEachOps$ForEachOrderedTask$-void_doCompute_java_util_stream_ForEachOps$ForEachOrderedTask_task_LambdaImpl0;
    }
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
.field private final action:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final completionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;>;"
        }
    .end annotation
.end field

.field private final helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private node:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Node",
            "<TT;>;"
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

.field private final targetSize:J


# direct methods
.method static synthetic -java_util_stream_ForEachOps$ForEachOrderedTask_lambda$1(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method constructor <init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    iget-wide v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    return-void
.end method

.method protected constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;",
            "Ljava/util/stream/Sink",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    invoke-interface {p2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    sget v1, Ljava/util/stream/AbstractTask;->LEAF_TARGET:I

    shl-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    iput-object v3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    return-void
.end method

.method private static doCompute(Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/ForEachOps$ForEachOrderedTask",
            "<TS;TT;>;)V"
        }
    .end annotation

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v12, 0x1

    iget-object v6, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    iget-wide v8, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-lez v10, :cond_3

    invoke-interface {v6}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v2, p0, v3, v10}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    new-instance v5, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v5, p0, v6, v2}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava/util/stream/ForEachOps$ForEachOrderedTask;Ljava/util/Spliterator;Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    invoke-virtual {p0, v12}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    invoke-virtual {v5, v12}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz v10, :cond_0

    invoke-virtual {v2, v12}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v11, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-virtual {v10, v11, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0, v13}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v6, v3

    move-object p0, v2

    move-object v7, v5

    :goto_2
    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v13}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    move-object p0, v5

    move-object v7, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v10

    if-lez v10, :cond_4

    new-instance v1, Ljava/util/stream/ForEachOps$ForEachOrderedTask$-void_doCompute_java_util_stream_ForEachOps$ForEachOrderedTask_task_LambdaImpl0;

    invoke-direct {v1}, Ljava/util/stream/ForEachOps$ForEachOrderedTask$-void_doCompute_java_util_stream_ForEachOps$ForEachOrderedTask_task_LambdaImpl0;-><init>()V

    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v11, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v11, v6}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13, v1}, Ljava/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v4

    iget-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v10, v4, v6}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v10

    check-cast v10, Ljava/util/stream/Node$Builder;

    invoke-interface {v10}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v10

    iput-object v10, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    iput-object v14, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 0

    invoke-static {p0}, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->doCompute(Ljava/util/stream/ForEachOps$ForEachOrderedTask;)V

    return-void
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    iget-object v2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    invoke-interface {v1, v2}, Ljava/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    iput-object v4, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava/util/stream/Node;

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava/util/stream/Sink;

    iget-object v3, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v1, v2, v3}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    iput-object v4, p0, Ljava/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava/util/Spliterator;

    goto :goto_0
.end method
