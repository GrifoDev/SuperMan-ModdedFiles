.class abstract Ljava/util/stream/Nodes$AbstractConcNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractConcNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava/util/stream/Node",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final left:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final right:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field private final size:J


# direct methods
.method constructor <init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    iput-object p2, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    invoke-interface {p1}, Ljava/util/stream/Node;->count()J

    move-result-wide v0

    invoke-interface {p2}, Ljava/util/stream/Node;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->size:J

    return-void
.end method


# virtual methods
.method public count()J
    .locals 2

    iget-wide v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->size:J

    return-wide v0
.end method

.method public getChild(I)Ljava/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_NODE;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
