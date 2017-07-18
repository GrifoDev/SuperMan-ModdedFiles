.class final synthetic Ljava/util/stream/SortedOps$RefSortingSink$-void_end__LambdaImpl0;
.super Ljava/lang/Object;
.source "SortedOps.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps$RefSortingSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_end__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/stream/Sink;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/SortedOps$RefSortingSink$-void_end__LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink$-void_end__LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    invoke-static {v0, p1}, Ljava/util/stream/SortedOps$RefSortingSink;->-java_util_stream_SortedOps$RefSortingSink-mthref-0(Ljava/util/stream/Sink;Ljava/lang/Object;)V

    return-void
.end method
