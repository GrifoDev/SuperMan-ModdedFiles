.class Ljava/util/stream/DoublePipeline$3;
.super Ljava/util/stream/IntPipeline$StatelessOp;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline;->mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/IntPipeline$StatelessOp",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/DoublePipeline;

.field final synthetic val$mapper:Ljava/util/function/DoubleToIntFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleToIntFunction;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/DoublePipeline$3;->this$0:Ljava/util/stream/DoublePipeline;

    iput-object p5, p0, Ljava/util/stream/DoublePipeline$3;->val$mapper:Ljava/util/function/DoubleToIntFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/IntPipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/DoublePipeline$3$1;

    iget-object v1, p0, Ljava/util/stream/DoublePipeline$3;->val$mapper:Ljava/util/function/DoubleToIntFunction;

    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/DoublePipeline$3$1;-><init>(Ljava/util/stream/DoublePipeline$3;Ljava/util/stream/Sink;Ljava/util/function/DoubleToIntFunction;)V

    return-object v0
.end method
