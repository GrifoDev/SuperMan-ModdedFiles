.class public Lcom/cmdm/control/biz/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    .line 22
    iput-object p1, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/cmdm/control/bean/HarassType;)Z
    .locals 3
    .param p1, "t"    # Lcom/cmdm/control/bean/HarassType;

    .prologue
    .line 26
    new-instance v1, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    .line 27
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/HarassTypeStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 29
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassType;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public aH()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    new-instance v2, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/HarassTypeStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 76
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassType;>;"
    invoke-virtual {v0, v4, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 77
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/HarassType;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 78
    const/4 v3, 0x1

    .line 80
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public am(Ljava/lang/String;)Z
    .locals 8
    .param p1, "typeid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 138
    new-instance v3, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v7, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    .line 139
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/HarassTypeStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 141
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassType;>;"
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 142
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "harassid=?"

    .line 143
    .local v1, "select":Ljava/lang/String;
    invoke-virtual {v0, v1, v4}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 144
    .local v2, "size":I
    if-lez v2, :cond_0

    .line 147
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public b(Lcom/cmdm/control/bean/HarassType;)Z
    .locals 10
    .param p1, "t"    # Lcom/cmdm/control/bean/HarassType;

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "result":Z
    if-nez p1, :cond_0

    move v3, v2

    .line 97
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 87
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_0
    new-instance v5, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v6, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    .line 88
    .local v5, "strategy":Lcom/cmdm/control/database/Impl/HarassTypeStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v5}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 90
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassType;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "marknum"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassType;->getMarknum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v6, "harassid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/cmdm/control/bean/HarassType;->typeId:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v0, v6, v7}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 93
    .local v4, "size":I
    if-lez v4, :cond_1

    .line 94
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 97
    .restart local v3    # "result":I
    goto :goto_0

    .line 96
    .end local v3    # "result":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public c(Ljava/lang/String;[Ljava/lang/String;)Lcom/cmdm/control/bean/HarassType;
    .locals 4
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 126
    new-instance v2, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    .line 127
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/HarassTypeStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 133
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassType;>;"
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/HarassType;

    .line 134
    .local v0, "b":Lcom/cmdm/control/bean/HarassType;
    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/HarassType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v6, 0x0

    .line 58
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/HarassType;>;"
    new-instance v7, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    .line 59
    .local v7, "strategy":Lcom/cmdm/control/database/Impl/HarassTypeStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v7}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassType;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 62
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 66
    :goto_0
    return-object v6

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public t(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/HarassType;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "numList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/HarassType;>;"
    const/4 v1, 0x0

    .line 34
    .local v1, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    move v2, v1

    .line 52
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 36
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    new-instance v4, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    .line 37
    .local v4, "strategy":Lcom/cmdm/control/database/Impl/HarassTypeStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 39
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassType;>;"
    const-string v5, "custom<>?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->beginTransaction()V

    .line 42
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 45
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    :goto_2
    move v2, v1

    .line 52
    .restart local v2    # "result":I
    goto :goto_0

    .line 42
    .end local v2    # "result":I
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/HarassType;

    .line 43
    .local v3, "soft":Lcom/cmdm/control/bean/HarassType;
    invoke-virtual {v0, v3}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 47
    .end local v3    # "soft":Lcom/cmdm/control/bean/HarassType;
    :catch_0
    move-exception v5

    .line 50
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    goto :goto_2

    .line 49
    :catchall_0
    move-exception v5

    .line 50
    invoke-virtual {v4}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    .line 51
    throw v5
.end method

.method public u(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/HarassType;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "numList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/HarassType;>;"
    const/4 v2, 0x0

    .line 102
    .local v2, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    move v3, v2

    .line 121
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 104
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_1
    new-instance v5, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v6, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    .line 105
    .local v5, "strategy":Lcom/cmdm/control/database/Impl/HarassTypeStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v5}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 107
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassType;>;"
    invoke-virtual {v5}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->beginTransaction()V

    .line 109
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 114
    invoke-virtual {v5}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const/4 v2, 0x1

    .line 119
    invoke-virtual {v5}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    :goto_2
    move v3, v2

    .line 121
    .restart local v3    # "result":I
    goto :goto_0

    .line 109
    .end local v3    # "result":I
    :cond_2
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/HarassType;

    .line 110
    .local v4, "soft":Lcom/cmdm/control/bean/HarassType;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "marknum"

    invoke-virtual {v4}, Lcom/cmdm/control/bean/HarassType;->getMarknum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v7, "harassid=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/cmdm/control/bean/HarassType;->typeId:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v1, v0, v7, v8}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 116
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "soft":Lcom/cmdm/control/bean/HarassType;
    :catch_0
    move-exception v6

    .line 119
    invoke-virtual {v5}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    goto :goto_2

    .line 118
    :catchall_0
    move-exception v6

    .line 119
    invoke-virtual {v5}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    .line 120
    throw v6
.end method
