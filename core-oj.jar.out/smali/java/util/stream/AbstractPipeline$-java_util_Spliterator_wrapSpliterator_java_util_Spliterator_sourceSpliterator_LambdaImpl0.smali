.class final synthetic Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;
.super Ljava/lang/Object;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/AbstractPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$sourceSpliterator:Ljava/util/Spliterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Spliterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;->val$sourceSpliterator:Ljava/util/Spliterator;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;->val$sourceSpliterator:Ljava/util/Spliterator;

    invoke-static {v0}, Ljava/util/stream/AbstractPipeline;->-java_util_stream_AbstractPipeline_lambda$2(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
