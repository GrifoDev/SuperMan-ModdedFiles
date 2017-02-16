.class abstract Ljava/util/stream/Nodes$ToArrayTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToArrayTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$ToArrayTask$OfDouble;,
        Ljava/util/stream/Nodes$ToArrayTask$OfInt;,
        Ljava/util/stream/Nodes$ToArrayTask$OfLong;,
        Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;,
        Ljava/util/stream/Nodes$ToArrayTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava/util/stream/Node",
        "<TT;>;K:",
        "Ljava/util/stream/Nodes$ToArrayTask",
        "<TT;TT_NODE;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final node:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final offset:I


# direct methods
.method constructor <init>(Ljava/util/stream/Node;I)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;I)V"
        }
    .end annotation

    .prologue
    .line 2031
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "node":Ljava/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    .line 2032
    iput-object p1, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    .line 2033
    iput p2, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    .line 2031
    return-void
.end method

.method constructor <init>(Ljava/util/stream/Nodes$ToArrayTask;Ljava/util/stream/Node;I)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT_NODE;I)V"
        }
    .end annotation

    .prologue
    .line 2037
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$ToArrayTask;, "TK;"
    .local p2, "node":Ljava/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 2038
    iput-object p2, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    .line 2039
    iput p3, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    .line 2036
    return-void
.end method


# virtual methods
.method public compute()V
    .locals 8

    .prologue
    .line 2048
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    move-object v3, p0

    .line 2050
    .local v3, "task":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    :goto_0
    iget-object v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    invoke-interface {v4}, Ljava/util/stream/Node;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 2051
    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask;->copyNodeToArray()V

    .line 2052
    invoke-virtual {v3}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    .line 2053
    return-void

    .line 2056
    :cond_0
    iget-object v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    invoke-interface {v4}, Ljava/util/stream/Node;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    .line 2058
    const/4 v2, 0x0

    .line 2059
    .local v2, "size":I
    const/4 v0, 0x0

    .line 2060
    .local v0, "i":I
    :goto_1
    iget-object v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    invoke-interface {v4}, Ljava/util/stream/Node;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 2061
    iget v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;

    move-result-object v1

    .line 2062
    .local v1, "leftTask":Ljava/util/stream/Nodes$ToArrayTask;, "TK;"
    int-to-long v4, v2

    iget-object v6, v1, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    invoke-interface {v6}, Ljava/util/stream/Node;->count()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 2063
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 2060
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2065
    .end local v1    # "leftTask":Ljava/util/stream/Nodes$ToArrayTask;, "TK;"
    :cond_1
    iget v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;

    move-result-object v3

    goto :goto_0
.end method

.method abstract copyNodeToArray()V
.end method

.method abstract makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation
.end method
