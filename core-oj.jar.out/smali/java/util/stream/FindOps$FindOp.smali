.class final Ljava/util/stream/FindOps$FindOp;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/TerminalOp",
        "<TT;TO;>;"
    }
.end annotation


# instance fields
.field final emptyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field final mustFindFirst:Z

.field final presentPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final shape:Ljava/util/stream/StreamShape;

.field final sinkSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/stream/TerminalSink",
            "<TT;TO;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/stream/StreamShape;",
            "TO;",
            "Ljava/util/function/Predicate",
            "<TO;>;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/stream/TerminalSink",
            "<TT;TO;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljava/util/stream/FindOps$FindOp;->mustFindFirst:Z

    iput-object p2, p0, Ljava/util/stream/FindOps$FindOp;->shape:Ljava/util/stream/StreamShape;

    iput-object p3, p0, Ljava/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    iput-object p4, p0, Ljava/util/stream/FindOps$FindOp;->presentPredicate:Ljava/util/function/Predicate;

    iput-object p5, p0, Ljava/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)TO;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/FindOps$FindTask;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/FindOps$FindTask;-><init>(Ljava/util/stream/FindOps$FindOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;)TO;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/TerminalSink;

    invoke-virtual {p1, v1, p2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v1

    check-cast v1, Ljava/util/stream/TerminalSink;

    invoke-interface {v1}, Ljava/util/stream/TerminalSink;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getOpFlags()I
    .locals 2

    sget v1, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindOp;->mustFindFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    goto :goto_0
.end method

.method public inputShape()Ljava/util/stream/StreamShape;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/FindOps$FindOp;->shape:Ljava/util/stream/StreamShape;

    return-object v0
.end method
