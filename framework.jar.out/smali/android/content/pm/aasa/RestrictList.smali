.class public Landroid/content/pm/aasa/RestrictList;
.super Ljava/lang/Object;
.source "RestrictList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/aasa/RestrictList$RestrictNode;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

.field private hasFound:Z

.field head:Landroid/content/pm/aasa/RestrictList$RestrictNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ASKSRestrictList"

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList;->TAG:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    iput-object v1, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/aasa/RestrictList;->hasFound:Z

    new-instance v0, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/pm/aasa/RestrictList$RestrictNode;-><init>(Landroid/content/pm/aasa/RestrictList;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method

.method private findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            ">;I)V"
        }
    .end annotation

    iget-boolean v3, p0, Landroid/content/pm/aasa/RestrictList;->hasFound:Z

    if-eqz v3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/pm/aasa/RestrictList;->hasFound:Z

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private findNodeByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/content/pm/aasa/RestrictList;->hasFound:Z

    if-eqz v3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/pm/aasa/RestrictList;->hasFound:Z

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/content/pm/aasa/RestrictList;->findNodeByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 2

    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {p1, v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->setParent(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    iput-object p1, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method

.method public addSibling(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 2

    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getParent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-static {v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->-get0(Landroid/content/pm/aasa/RestrictList$RestrictNode;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->setParent(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    iput-object p1, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method

.method public findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, v2}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;Ljava/util/ArrayList;I)V

    iput-boolean v2, p0, Landroid/content/pm/aasa/RestrictList;->hasFound:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    goto :goto_0
.end method

.method public findNodeAll(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;Ljava/util/ArrayList;I)V

    iput-boolean v2, p0, Landroid/content/pm/aasa/RestrictList;->hasFound:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public findNodeByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, v2}, Landroid/content/pm/aasa/RestrictList;->findNodeByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;Ljava/util/ArrayList;I)V

    iput-boolean v2, p0, Landroid/content/pm/aasa/RestrictList;->hasFound:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    goto :goto_0
.end method

.method public findNodeByTypeAll(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/content/pm/aasa/RestrictList;->findNodeByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;Ljava/util/ArrayList;I)V

    iput-boolean v2, p0, Landroid/content/pm/aasa/RestrictList;->hasFound:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public findNodeByTypeInChild(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    return-object v4

    :cond_0
    iget-object v2, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    :cond_3
    return-object v4
.end method

.method public findNodeSet(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/aasa/RestrictList$RestrictNode;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getParent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCurrent()Landroid/content/pm/aasa/RestrictList$RestrictNode;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-object v0
.end method

.method public getHead()Landroid/content/pm/aasa/RestrictList$RestrictNode;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-object v0
.end method

.method public makeNode(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/aasa/RestrictList$RestrictNode;
    .locals 1

    new-instance v0, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/pm/aasa/RestrictList$RestrictNode;-><init>(Landroid/content/pm/aasa/RestrictList;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public moveCurrentToNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method

.method public moveParent()V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getParent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method

.method public pruneDummyHead()I
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v4}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v3, -0x1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    const-string/jumbo v4, "RESTRICTED"

    invoke-virtual {v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v1, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    iput-object v4, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    goto :goto_0
.end method

.method public removeNodeAllByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/aasa/RestrictList;->findNodeByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getParent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/aasa/RestrictList;->getHead()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeNodeAlone(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/aasa/RestrictList;->findNode(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getParent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v4, "ASKSRestrictList"

    const-string/jumbo v5, "cannot find parent to remove childe node alone"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeNodeAloneByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/aasa/RestrictList;->findNodeByType(Landroid/content/pm/aasa/RestrictList$RestrictNode;Ljava/lang/String;)Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getParent()Landroid/content/pm/aasa/RestrictList$RestrictNode;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v4, "ASKSRestrictList"

    const-string/jumbo v5, "cannot find parent to remove childe node alone"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentToHead()V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    iput-object v0, p0, Landroid/content/pm/aasa/RestrictList;->cur:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    return-void
.end method

.method public traverseList(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/content/pm/aasa/RestrictList;->head:Landroid/content/pm/aasa/RestrictList$RestrictNode;

    :cond_0
    const-string/jumbo v2, "ASKSRestrictList"

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/aasa/RestrictList$RestrictNode;->getChildList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/aasa/RestrictList$RestrictNode;

    invoke-virtual {p0, v0}, Landroid/content/pm/aasa/RestrictList;->traverseList(Landroid/content/pm/aasa/RestrictList$RestrictNode;)V

    goto :goto_0

    :cond_1
    return-void
.end method
