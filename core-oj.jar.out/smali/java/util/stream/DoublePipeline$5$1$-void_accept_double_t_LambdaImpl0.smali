.class final synthetic Ljava/util/stream/DoublePipeline$5$1$-void_accept_double_t_LambdaImpl0;
.super Ljava/lang/Object;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline$5$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_accept_double_t_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/stream/DoublePipeline$5$1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/DoublePipeline$5$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/DoublePipeline$5$1$-void_accept_double_t_LambdaImpl0;->val$this:Ljava/util/stream/DoublePipeline$5$1;

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1$-void_accept_double_t_LambdaImpl0;->val$this:Ljava/util/stream/DoublePipeline$5$1;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/DoublePipeline$5$1;->-java_util_stream_DoublePipeline$5$1_lambda$3(D)V

    return-void
.end method
