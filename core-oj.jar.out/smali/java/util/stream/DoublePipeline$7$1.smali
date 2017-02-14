.class Ljava/util/stream/DoublePipeline$7$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$7;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/DoublePipeline$7;

.field final synthetic val$predicate:Ljava/util/function/DoublePredicate;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline$7;Ljava/util/stream/Sink;Ljava/util/function/DoublePredicate;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/DoublePipeline$7$1;->this$1:Ljava/util/stream/DoublePipeline$7;

    iput-object p3, p0, Ljava/util/stream/DoublePipeline$7$1;->val$predicate:Ljava/util/function/DoublePredicate;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/DoublePipeline$7$1;->val$predicate:Ljava/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 4

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    return-void
.end method
