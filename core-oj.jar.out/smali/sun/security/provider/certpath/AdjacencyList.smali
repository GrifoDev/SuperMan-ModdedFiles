.class public Lsun/security/provider/certpath/AdjacencyList;
.super Ljava/lang/Object;
.source "AdjacencyList.java"


# instance fields
.field private mOrigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStepList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/security/provider/certpath/BuildStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    iput-object p1, p0, Lsun/security/provider/certpath/AdjacencyList;->mOrigList:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsun/security/provider/certpath/AdjacencyList;->buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z

    return-void
.end method

.method private buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;I",
            "Lsun/security/provider/certpath/BuildStep;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_1
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    const/4 v10, 0x1

    invoke-direct {v9, v6, v10}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_8

    if-eqz v1, :cond_4

    if-nez p3, :cond_3

    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v8, 0x0

    return v8

    :cond_3
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    invoke-virtual {p3}, Lsun/security/provider/certpath/BuildStep;->getVertex()Lsun/security/provider/certpath/Vertex;

    move-result-object v10

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    iget-object v9, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v10, Lsun/security/provider/certpath/BuildStep;

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/provider/certpath/Vertex;

    const/4 v11, 0x5

    invoke-direct {v10, v8, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    const/4 v8, 0x1

    return v8

    :cond_7
    iget-object v9, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v10, Lsun/security/provider/certpath/BuildStep;

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/provider/certpath/Vertex;

    const/4 v11, 0x5

    invoke-direct {v10, v8, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_9

    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_9

    new-instance v2, Lsun/security/provider/certpath/BuildStep;

    const/4 v8, 0x3

    invoke-direct {v2, v6, v8}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    invoke-direct {p0, p1, v8, v2}, Lsun/security/provider/certpath/AdjacencyList;->buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z

    move-result v5

    goto :goto_5

    :cond_a
    if-eqz v5, :cond_b

    const/4 v8, 0x1

    return v8

    :cond_b
    if-nez p3, :cond_c

    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v8, 0x0

    return v8

    :cond_c
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    invoke-virtual {p3}, Lsun/security/provider/certpath/BuildStep;->getVertex()Lsun/security/provider/certpath/Vertex;

    move-result-object v10

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/provider/certpath/BuildStep;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[\n"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v7, p0, Lsun/security/provider/certpath/AdjacencyList;->mOrigList:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string/jumbo v7, "LinkedList["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v5}, Lsun/security/provider/certpath/Vertex;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "]\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
