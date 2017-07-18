.class final synthetic Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_initPartialTraversalState__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/stream/SpinedBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/SpinedBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/SpinedBuffer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/SpinedBuffer;

    invoke-static {v0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->-java_util_stream_StreamSpliterators$WrappingSpliterator-mthref-0(Ljava/util/stream/SpinedBuffer;Ljava/lang/Object;)V

    return-void
.end method
