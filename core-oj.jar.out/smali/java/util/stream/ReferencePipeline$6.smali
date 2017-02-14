.class Ljava/util/stream/ReferencePipeline$6;
.super Ljava/util/stream/DoublePipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/DoublePipeline$StatelessOp",
        "<TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/ReferencePipeline;

.field final synthetic val$mapper:Ljava/util/function/ToDoubleFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/ToDoubleFunction;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$6;->this$0:Ljava/util/stream/ReferencePipeline;

    iput-object p5, p0, Ljava/util/stream/ReferencePipeline$6;->val$mapper:Ljava/util/function/ToDoubleFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/DoublePipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/ReferencePipeline$6$1;

    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$6;->val$mapper:Ljava/util/function/ToDoubleFunction;

    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/ReferencePipeline$6$1;-><init>(Ljava/util/stream/ReferencePipeline$6;Ljava/util/stream/Sink;Ljava/util/function/ToDoubleFunction;)V

    return-object v0
.end method
