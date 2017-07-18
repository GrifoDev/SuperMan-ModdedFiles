.class Ljava/util/stream/IntPipeline$6$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$6;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/IntPipeline$6;

.field final synthetic val$mapper:Ljava/util/function/IntToDoubleFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline$6;Ljava/util/stream/Sink;Ljava/util/function/IntToDoubleFunction;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/IntPipeline$6$1;->this$1:Ljava/util/stream/IntPipeline$6;

    iput-object p3, p0, Ljava/util/stream/IntPipeline$6$1;->val$mapper:Ljava/util/function/IntToDoubleFunction;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/IntPipeline$6$1;->val$mapper:Ljava/util/function/IntToDoubleFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    return-void
.end method
