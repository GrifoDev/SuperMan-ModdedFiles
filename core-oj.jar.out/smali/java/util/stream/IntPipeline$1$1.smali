.class Ljava/util/stream/IntPipeline$1$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$1;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/IntPipeline$1;


# direct methods
.method constructor <init>(Ljava/util/stream/IntPipeline$1;Ljava/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/IntPipeline$1$1;->this$1:Ljava/util/stream/IntPipeline$1;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->accept(J)V

    return-void
.end method
