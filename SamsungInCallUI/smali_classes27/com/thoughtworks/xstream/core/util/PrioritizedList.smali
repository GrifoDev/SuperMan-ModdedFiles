.class public Lcom/thoughtworks/xstream/core/util/PrioritizedList;
.super Ljava/lang/Object;
.source "PrioritizedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItemIterator;,
        Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;
    }
.end annotation


# instance fields
.field private lastId:I

.field private lowestPriority:I

.field private final set:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->set:Ljava/util/Set;

    .line 32
    const v0, 0x7fffffff

    iput v0, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->lowestPriority:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->lastId:I

    .line 73
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "priority"    # I

    .prologue
    .line 37
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->lowestPriority:I

    if-le v0, p2, :cond_0

    .line 38
    iput p2, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->lowestPriority:I

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->set:Ljava/util/Set;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->lastId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->lastId:I

    invoke-direct {v1, p1, p2, v2}, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItem;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItemIterator;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/PrioritizedList$PrioritizedItemIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
