.class final Ljava/util/stream/MatchOps$MatchOp;
.super Ljava/lang/Object;
.source "MatchOps.java"

# interfaces
.implements Ljava/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/TerminalOp",
        "<TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final inputShape:Ljava/util/stream/StreamShape;

.field final matchKind:Ljava/util/stream/MatchOps$MatchKind;

.field final sinkSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/stream/MatchOps$BooleanTerminalSink",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/stream/MatchOps$BooleanTerminalSink",
            "<TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/MatchOps$MatchOp;->inputShape:Ljava/util/stream/StreamShape;

    iput-object p2, p0, Ljava/util/stream/MatchOps$MatchOp;->matchKind:Ljava/util/stream/MatchOps$MatchKind;

    iput-object p3, p0, Ljava/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/MatchOps$MatchTask;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/MatchOps$MatchTask;-><init>(Ljava/util/stream/MatchOps$MatchOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/MatchOps$MatchOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TS;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {p1, v0, p2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {v0}, Ljava/util/stream/MatchOps$BooleanTerminalSink;->getAndClearState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/MatchOps$MatchOp;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getOpFlags()I
    .locals 2

    sget v0, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    or-int/2addr v0, v1

    return v0
.end method

.method public inputShape()Ljava/util/stream/StreamShape;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/MatchOps$MatchOp;->inputShape:Ljava/util/stream/StreamShape;

    return-object v0
.end method
