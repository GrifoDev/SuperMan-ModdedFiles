.class final synthetic Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_initPartialTraversalState__LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;->val$this:Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 1

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;->val$this:Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->-java_util_stream_StreamSpliterators$IntWrappingSpliterator_lambda$5()Z

    move-result v0

    return v0
.end method
