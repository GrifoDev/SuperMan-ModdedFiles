.class final synthetic Ljava/util/stream/IntPipeline$-int__toArray__LambdaImpl0;
.super Ljava/lang/Object;
.source "IntPipeline.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-int__toArray__LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline-mthref-8(I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
