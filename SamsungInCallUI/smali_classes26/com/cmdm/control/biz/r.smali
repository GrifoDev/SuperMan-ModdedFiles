.class public Lcom/cmdm/control/biz/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 3
    .param p1, "numList"    # Lcom/cmdm/control/bean/HarassMobile;

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v2, 0x0

    .line 39
    :goto_0
    return v2

    .line 33
    :cond_0
    new-instance v1, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    .line 34
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/FraudStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 36
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    iget-object v2, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cmdm/control/biz/r;->al(Ljava/lang/String;)Lcom/cmdm/control/bean/HarassMobile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/cmdm/control/biz/r;->b(Lcom/cmdm/control/bean/HarassMobile;)Z

    move-result v2

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Z)Z
    .locals 11
    .param p2, "isDele"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/HarassMobile;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "numList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/HarassMobile;>;"
    const/4 v8, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    move v4, v3

    .line 69
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 47
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_1
    new-instance v6, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v7, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    .line 48
    .local v6, "strategy":Lcom/cmdm/control/database/Impl/FraudStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v6}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 50
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    if-eqz p2, :cond_2

    .line 51
    invoke-virtual {v0, v8, v8}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    :cond_2
    invoke-virtual {v6}, Lcom/cmdm/control/database/Impl/FraudStrategy;->beginTransaction()V

    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-virtual {v6}, Lcom/cmdm/control/database/Impl/FraudStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v6}, Lcom/cmdm/control/database/Impl/FraudStrategy;->endTransaction()V

    :goto_2
    move v4, v3

    .line 69
    .restart local v4    # "result":I
    goto :goto_0

    .line 54
    .end local v4    # "result":I
    :cond_3
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/HarassMobile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .local v5, "soft":Lcom/cmdm/control/bean/HarassMobile;
    :try_start_2
    invoke-virtual {v0, v5}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v2

    .line 57
    .local v2, "insertresult":Z
    const-string v8, "insertresult"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 58
    .end local v2    # "insertresult":Z
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "soft":Lcom/cmdm/control/bean/HarassMobile;
    :catch_1
    move-exception v7

    .line 67
    invoke-virtual {v6}, Lcom/cmdm/control/database/Impl/FraudStrategy;->endTransaction()V

    goto :goto_2

    .line 66
    :catchall_0
    move-exception v7

    .line 67
    invoke-virtual {v6}, Lcom/cmdm/control/database/Impl/FraudStrategy;->endTransaction()V

    .line 68
    throw v7
.end method

.method public aF()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    new-instance v2, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    .line 118
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/FraudStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 120
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    invoke-virtual {v1, v4, v4}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 122
    const/4 v3, 0x1

    .line 124
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public aG()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    new-instance v2, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    .line 155
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/FraudStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 157
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    invoke-virtual {v0, v4, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 158
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/HarassMobile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_0

    .line 159
    const/4 v3, 0x1

    .line 161
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public ak(Ljava/lang/String;)Z
    .locals 8
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 98
    new-instance v3, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v7, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    .line 99
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/FraudStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 101
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1}, Lcom/cmdm/control/util/encry/Signature;->getHarassMobileSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 102
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v2, "mobile=?"

    .line 103
    .local v2, "select":Ljava/lang/String;
    invoke-virtual {v1, v2, v4}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 107
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public al(Ljava/lang/String;)Lcom/cmdm/control/bean/HarassMobile;
    .locals 8
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v3, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v5, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    .line 135
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/FraudStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 139
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/Signature;->getHarassMobileSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 140
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, "Signature.getHarassMobileSignature(num)"

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/cmdm/control/util/encry/Signature;->getHarassMobileSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "mobile=?"

    .line 143
    .local v2, "select":Ljava/lang/String;
    invoke-virtual {v1, v2, v4}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/HarassMobile;

    .line 144
    .local v0, "b":Lcom/cmdm/control/bean/HarassMobile;
    if-eqz v0, :cond_0

    .line 145
    iput-object p1, v0, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    .line 147
    :cond_0
    return-object v0
.end method

.method public b(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 9
    .param p1, "t"    # Lcom/cmdm/control/bean/HarassMobile;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 73
    new-instance v3, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v6, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    .line 74
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/HarassMarkStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 76
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    const/4 v2, 0x0

    .line 77
    .local v2, "size":I
    if-eqz p1, :cond_0

    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "mobile"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v6, "mobiledes"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->mobileDes:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v6, "type"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v6, "typename"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v6, "smallimg"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v6, "bgimg"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeBackgroundUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v6, "mobile=?"

    new-array v7, v4, [Ljava/lang/String;

    iget-object v8, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-virtual {v1, v0, v6, v7}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 87
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    if-lez v2, :cond_1

    .line 90
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method
