.class final Lcom/google/common/collect/TreeTraverser$PostOrderIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/common/collect/TreeTraverser$PostOrderNode",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->expand(Ljava/lang/Object;)Lcom/google/common/collect/TreeTraverser$PostOrderNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private expand(Ljava/lang/Object;)Lcom/google/common/collect/TreeTraverser$PostOrderNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/TreeTraverser$PostOrderNode",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeTraverser$PostOrderNode;

    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/TreeTraverser$PostOrderNode;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeTraverser$PostOrderNode;

    iget-object v2, v1, Lcom/google/common/collect/TreeTraverser$PostOrderNode;->childIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/common/collect/TreeTraverser$PostOrderNode;->childIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->expand(Ljava/lang/Object;)Lcom/google/common/collect/TreeTraverser$PostOrderNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/common/collect/TreeTraverser$PostOrderNode;->root:Ljava/lang/Object;

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeTraverser$PostOrderIterator;->endOfData()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method
