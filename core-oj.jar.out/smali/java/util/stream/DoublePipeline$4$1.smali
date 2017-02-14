.class Ljava/util/stream/DoublePipeline$4$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$4;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/DoublePipeline$4;

.field final synthetic val$mapper:Ljava/util/function/DoubleToLongFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline$4;Ljava/util/stream/Sink;Ljava/util/function/DoubleToLongFunction;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/DoublePipeline$4$1;->this$1:Ljava/util/stream/DoublePipeline$4;

    iput-object p3, p0, Ljava/util/stream/DoublePipeline$4$1;->val$mapper:Ljava/util/function/DoubleToLongFunction;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 5

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/DoublePipeline$4$1;->val$mapper:Ljava/util/function/DoubleToLongFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleToLongFunction;->applyAsLong(D)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(J)V

    return-void
.end method
