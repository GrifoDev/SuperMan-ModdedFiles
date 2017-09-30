.class public Lcom/cmdm/control/biz/r;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    iget-object v0, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/biz/r;->al(Ljava/lang/String;)Lcom/cmdm/control/bean/HarassMobile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/biz/r;->b(Lcom/cmdm/control/bean/HarassMobile;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/HarassMobile;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v0, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    if-eqz p2, :cond_2

    invoke-virtual {v3, v4, v4}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/FraudStrategy;->beginTransaction()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/FraudStrategy;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/FraudStrategy;->endTransaction()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/HarassMobile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3, v0}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "insertresult"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    :goto_2
    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/FraudStrategy;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/cmdm/control/database/Impl/FraudStrategy;->endTransaction()V

    throw v0

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public aF()Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, v2, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aG()Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, v2, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ak(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p1}, Lcom/cmdm/control/util/encry/Signature;->getHarassMobileSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v4, "mobile=?"

    invoke-virtual {v3, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public al(Ljava/lang/String;)Lcom/cmdm/control/bean/HarassMobile;
    .locals 5

    new-instance v0, Lcom/cmdm/control/database/Impl/FraudStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/FraudStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/Signature;->getHarassMobileSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Signature.getHarassMobileSignature(num)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/cmdm/control/util/encry/Signature;->getHarassMobileSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mobile=?"

    invoke-virtual {v1, v2, v0}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/HarassMobile;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public b(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/r;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    if-eqz p1, :cond_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mobile"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mobiledes"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->mobileDes:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->typeId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "typename"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "smallimg"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->typeThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bgimg"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->typeBackgroundUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mobile=?"

    new-array v5, v0, [Ljava/lang/String;

    iget-object v6, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v2, v4, v5}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0
.end method
