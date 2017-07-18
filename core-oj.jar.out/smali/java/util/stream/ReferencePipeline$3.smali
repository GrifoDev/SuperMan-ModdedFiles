.class Ljava/util/stream/ReferencePipeline$3;
.super Ljava/util/stream/ReferencePipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatelessOp",
        "<TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/ReferencePipeline;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$3;->this$0:Ljava/util/stream/ReferencePipeline;

    iput-object p5, p0, Ljava/util/stream/ReferencePipeline$3;->val$mapper:Ljava/util/function/Function;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/ReferencePipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TR;>;)",
            "Ljava/util/stream/Sink",
            "<TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/ReferencePipeline$3$1;

    iget-object v1, p0, Ljava/util/stream/ReferencePipeline$3;->val$mapper:Ljava/util/function/Function;

    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/ReferencePipeline$3$1;-><init>(Ljava/util/stream/ReferencePipeline$3;Ljava/util/stream/Sink;Ljava/util/function/Function;)V

    return-object v0
.end method
