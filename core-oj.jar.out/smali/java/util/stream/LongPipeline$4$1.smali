.class Ljava/util/stream/LongPipeline$4$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$4;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/LongPipeline$4;

.field final synthetic val$mapper:Ljava/util/function/LongToIntFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline$4;Ljava/util/stream/Sink;Ljava/util/function/LongToIntFunction;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/LongPipeline$4$1;->this$1:Ljava/util/stream/LongPipeline$4;

    iput-object p3, p0, Ljava/util/stream/LongPipeline$4$1;->val$mapper:Ljava/util/function/LongToIntFunction;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/LongPipeline$4$1;->val$mapper:Ljava/util/function/LongToIntFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/LongToIntFunction;->applyAsInt(J)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(I)V

    return-void
.end method
