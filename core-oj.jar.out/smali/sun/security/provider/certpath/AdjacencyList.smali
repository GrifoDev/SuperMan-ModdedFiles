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

    .prologue
    .line 100
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    .line 102
    iput-object p1, p0, Lsun/security/provider/certpath/AdjacencyList;->mOrigList:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsun/security/provider/certpath/AdjacencyList;->buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z

    .line 100
    return-void
.end method

.method private buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z
    .locals 12
    .param p2, "index"    # I
    .param p3, "follow"    # Lsun/security/provider/certpath/BuildStep;
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

    .prologue
    .line 129
    .local p1, "theList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 132
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    const/4 v0, 0x1

    .line 134
    .local v0, "allNegOne":Z
    const/4 v1, 0x1

    .line 136
    .local v1, "allXcps":Z
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/provider/certpath/Vertex;

    .line 137
    .local v6, "v":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 140
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 148
    :cond_0
    :goto_1
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    const/4 v10, 0x1

    invoke-direct {v9, v6, v10}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_0

    .line 144
    const/4 v1, 0x0

    goto :goto_1

    .line 151
    .end local v6    # "v":Lsun/security/provider/certpath/Vertex;
    :cond_2
    if-eqz v0, :cond_8

    .line 156
    if-eqz v1, :cond_4

    .line 158
    if-nez p3, :cond_3

    .line 159
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_2
    const/4 v8, 0x0

    return v8

    .line 161
    :cond_3
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    invoke-virtual {p3}, Lsun/security/provider/certpath/BuildStep;->getVertex()Lsun/security/provider/certpath/Vertex;

    move-result-object v10

    .line 162
    const/4 v11, 0x2

    .line 161
    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v4, "possibles":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
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

    .line 172
    .restart local v6    # "v":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_5

    .line 173
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 176
    .end local v6    # "v":Lsun/security/provider/certpath/Vertex;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 178
    iget-object v9, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v10, Lsun/security/provider/certpath/BuildStep;

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/provider/certpath/Vertex;

    .line 179
    const/4 v11, 0x5

    .line 178
    invoke-direct {v10, v8, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_4
    const/4 v8, 0x1

    return v8

    .line 188
    :cond_7
    iget-object v9, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v10, Lsun/security/provider/certpath/BuildStep;

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/provider/certpath/Vertex;

    .line 189
    const/4 v11, 0x5

    .line 188
    invoke-direct {v10, v8, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 200
    .end local v4    # "possibles":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    :cond_8
    const/4 v5, 0x0

    .line 202
    .local v5, "success":Z
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v5    # "success":Z
    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/provider/certpath/Vertex;

    .line 208
    .restart local v6    # "v":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_9

    .line 209
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_9

    .line 213
    new-instance v2, Lsun/security/provider/certpath/BuildStep;

    const/4 v8, 0x3

    invoke-direct {v2, v6, v8}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    .line 214
    .local v2, "bs":Lsun/security/provider/certpath/BuildStep;
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v6}, Lsun/security/provider/certpath/Vertex;->getIndex()I

    move-result v8

    invoke-direct {p0, p1, v8, v2}, Lsun/security/provider/certpath/AdjacencyList;->buildList(Ljava/util/List;ILsun/security/provider/certpath/BuildStep;)Z

    move-result v5

    .local v5, "success":Z
    goto :goto_5

    .line 220
    .end local v2    # "bs":Lsun/security/provider/certpath/BuildStep;
    .end local v5    # "success":Z
    .end local v6    # "v":Lsun/security/provider/certpath/Vertex;
    :cond_a
    if-eqz v5, :cond_b

    .line 222
    const/4 v8, 0x1

    return v8

    .line 226
    :cond_b
    if-nez p3, :cond_c

    .line 227
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11}, Lsun/security/provider/certpath/BuildStep;-><init>(Lsun/security/provider/certpath/Vertex;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :goto_6
    const/4 v8, 0x0

    return v8

    .line 229
    :cond_c
    iget-object v8, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    new-instance v9, Lsun/security/provider/certpath/BuildStep;

    invoke-virtual {p3}, Lsun/security/provider/certpath/BuildStep;->getVertex()Lsun/security/provider/certpath/Vertex;

    move-result-object v10

    .line 230
    const/4 v11, 0x2

    .line 229
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

    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/provider/certpath/AdjacencyList;->mStepList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[\n"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 247
    .local v0, "i":I
    iget-object v7, p0, Lsun/security/provider/certpath/AdjacencyList;->mOrigList:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 248
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    const-string/jumbo v7, "LinkedList["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "step$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/provider/certpath/Vertex;

    .line 251
    .local v5, "step":Lsun/security/provider/certpath/Vertex;
    invoke-virtual {v5}, Lsun/security/provider/certpath/Vertex;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v5    # "step":Lsun/security/provider/certpath/Vertex;
    :cond_0
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 254
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    .end local v6    # "step$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v7, "]\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
