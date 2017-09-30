.class public Lcom/cmdm/control/biz/t;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/cmdm/control/bean/HarassType;)Z
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public aH()Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, v2, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public am(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string v4, "harassid=?"

    invoke-virtual {v3, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Lcom/cmdm/control/bean/HarassType;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v2, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "marknum"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassType;->getMarknum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "harassid=?"

    new-array v5, v0, [Ljava/lang/String;

    iget-object v6, p1, Lcom/cmdm/control/bean/HarassType;->typeId:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v2, v4, v5}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public c(Ljava/lang/String;[Ljava/lang/String;)Lcom/cmdm/control/bean/HarassType;
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/HarassType;

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
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

    const/4 v6, 0x0

    new-instance v1, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v0, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method public t(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/HarassType;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    new-instance v3, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v0, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v4, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v0, "custom<>?"

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->beginTransaction()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/HarassType;

    invoke-virtual {v4, v0}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    throw v0
.end method

.method public u(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/HarassType;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    new-instance v3, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;

    iget-object v0, p0, Lcom/cmdm/control/biz/t;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v4, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->beginTransaction()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/HarassType;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "marknum"

    invoke-virtual {v0}, Lcom/cmdm/control/bean/HarassType;->getMarknum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "harassid=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v0, v0, Lcom/cmdm/control/bean/HarassType;->typeId:Ljava/lang/String;

    aput-object v0, v8, v9

    invoke-virtual {v4, v6, v7, v8}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->endTransaction()V

    throw v0
.end method
