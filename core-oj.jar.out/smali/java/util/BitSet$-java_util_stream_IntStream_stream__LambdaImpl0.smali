.class final synthetic Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/BitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_IntStream_stream__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/BitSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/BitSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;->val$this:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;->val$this:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->-java_util_BitSet_lambda$1()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
