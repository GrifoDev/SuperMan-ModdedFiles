.class public Lcom/cmdm/control/biz/s;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Lcom/cmdm/control/bean/HarassMobile;
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/HarassMobile;

    return-object v0
.end method

.method public c(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v1, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    if-eqz p1, :cond_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "harassid"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->typeId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "harassname"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mobile"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "smallimg"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->typeThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bgimg"

    iget-object v5, p1, Lcom/cmdm/control/bean/HarassMobile;->typeBackgroundUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "guishudi"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassMobile;->getGuishudi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassMobile;->getDate()Ljava/lang/String;

    move-result-object v5

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

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/HarassMobile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
