.class Ljava/util/stream/LongPipeline$5$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$5;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/LongPipeline$5;

.field final synthetic val$mapper:Ljava/util/function/LongToDoubleFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline$5;Ljava/util/stream/Sink;Ljava/util/function/LongToDoubleFunction;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/LongPipeline$5$1;->this$1:Ljava/util/stream/LongPipeline$5;

    iput-object p3, p0, Ljava/util/stream/LongPipeline$5$1;->val$mapper:Ljava/util/function/LongToDoubleFunction;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 5

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/LongPipeline$5$1;->val$mapper:Ljava/util/function/LongToDoubleFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongToDoubleFunction;->applyAsDouble(J)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    return-void
.end method
