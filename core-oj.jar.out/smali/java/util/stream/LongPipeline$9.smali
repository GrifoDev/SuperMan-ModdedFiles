.class Ljava/util/stream/LongPipeline$9;
.super Ljava/util/stream/LongPipeline$StatelessOp;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline;->peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/LongPipeline$StatelessOp",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/LongPipeline;

.field final synthetic val$action:Ljava/util/function/LongConsumer;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongConsumer;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/LongPipeline$9;->this$0:Ljava/util/stream/LongPipeline;

    iput-object p5, p0, Ljava/util/stream/LongPipeline$9;->val$action:Ljava/util/function/LongConsumer;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/LongPipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/LongPipeline$9$1;

    iget-object v1, p0, Ljava/util/stream/LongPipeline$9;->val$action:Ljava/util/function/LongConsumer;

    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/LongPipeline$9$1;-><init>(Ljava/util/stream/LongPipeline$9;Ljava/util/stream/Sink;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method
