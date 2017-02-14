.class Ljava/util/stream/IntPipeline$3;
.super Ljava/util/stream/IntPipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/IntPipeline$StatelessOp",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/IntPipeline;

.field final synthetic val$mapper:Ljava/util/function/IntUnaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntUnaryOperator;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/IntPipeline$3;->this$0:Ljava/util/stream/IntPipeline;

    iput-object p5, p0, Ljava/util/stream/IntPipeline$3;->val$mapper:Ljava/util/function/IntUnaryOperator;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/IntPipeline$3$1;

    iget-object v1, p0, Ljava/util/stream/IntPipeline$3;->val$mapper:Ljava/util/function/IntUnaryOperator;

    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/IntPipeline$3$1;-><init>(Ljava/util/stream/IntPipeline$3;Ljava/util/stream/Sink;Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method
