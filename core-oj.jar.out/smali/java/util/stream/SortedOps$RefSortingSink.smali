.class final Ljava/util/stream/SortedOps$RefSortingSink;
.super Ljava/util/stream/SortedOps$AbstractRefSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefSortingSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SortedOps$RefSortingSink$-void_end__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/SortedOps$AbstractRefSortingSink",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_SortedOps$RefSortingSink-mthref-0(Ljava/util/stream/Sink;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public begin(J)V
    .locals 3

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iput-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public end()V
    .locals 6

    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/util/stream/SortedOps$AbstractRefSortingSink;->comparator:Ljava/util/Comparator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object v2, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    iget-object v3, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Ljava/util/stream/Sink;->begin(J)V

    iget-boolean v2, p0, Ljava/util/stream/SortedOps$AbstractRefSortingSink;->cancellationWasRequested:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/stream/SortedOps$RefSortingSink$-void_end__LambdaImpl0;

    invoke-direct {v4, v3}, Ljava/util/stream/SortedOps$RefSortingSink$-void_end__LambdaImpl0;-><init>(Ljava/util/stream/Sink;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v2, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->end()V

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    return-void

    :cond_1
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2, v0}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method
