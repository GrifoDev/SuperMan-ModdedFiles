.class Ljava/util/stream/IntPipeline$6;
.super Ljava/util/stream/DoublePipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline;->mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/DoublePipeline$StatelessOp",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/IntPipeline;

.field final synthetic val$mapper:Ljava/util/function/IntToDoubleFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntToDoubleFunction;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/IntPipeline$6;->this$0:Ljava/util/stream/IntPipeline;

    iput-object p5, p0, Ljava/util/stream/IntPipeline$6;->val$mapper:Ljava/util/function/IntToDoubleFunction;

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
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/IntPipeline$6$1;

    iget-object v1, p0, Ljava/util/stream/IntPipeline$6;->val$mapper:Ljava/util/function/IntToDoubleFunction;

    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/IntPipeline$6$1;-><init>(Ljava/util/stream/IntPipeline$6;Ljava/util/stream/Sink;Ljava/util/function/IntToDoubleFunction;)V

    return-object v0
.end method
