.class Ljava/util/stream/LongPipeline$6$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$6;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/LongPipeline$6$1$-void_accept_long_t_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/LongPipeline$6;

.field final synthetic val$mapper:Ljava/util/function/LongFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline$6;Ljava/util/stream/Sink;Ljava/util/function/LongFunction;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/LongPipeline$6$1;->this$1:Ljava/util/stream/LongPipeline$6;

    iput-object p3, p0, Ljava/util/stream/LongPipeline$6$1;->val$mapper:Ljava/util/function/LongFunction;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method synthetic -java_util_stream_LongPipeline$6$1_lambda$3(J)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    return-void
.end method

.method public accept(J)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ljava/util/stream/LongPipeline$6$1;->val$mapper:Ljava/util/function/LongFunction;

    invoke-interface {v2, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/stream/LongStream;

    move-object v1, v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object v2

    new-instance v4, Ljava/util/stream/LongPipeline$6$1$-void_accept_long_t_LambdaImpl0;

    invoke-direct {v4, p0}, Ljava/util/stream/LongPipeline$6$1$-void_accept_long_t_LambdaImpl0;-><init>(Ljava/util/stream/LongPipeline$6$1;)V

    invoke-interface {v2, v4}, Ljava/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/stream/LongStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/LongStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v2

    :cond_5
    return-void

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public begin(J)V
    .locals 4

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    return-void
.end method
