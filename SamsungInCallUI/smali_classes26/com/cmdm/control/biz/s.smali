.class public Lcom/cmdm/control/biz/s;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 4

    new-instance v2, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Lcom/cmdm/control/bean/HarassMobile;
    .locals 3

    new-instance v1, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/HarassMobile;

    return-object v2
.end method

.method public c(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 3

    new-instance v1, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public d(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v3, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v6, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "harassid"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "harassname"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mobile"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "smallimg"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "bgimg"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeBackgroundUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "guishudi"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassMobile;->getGuishudi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "date"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassMobile;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mobile=?"

    new-array v7, v4, [Ljava/lang/String;

    iget-object v8, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-virtual {v1, v0, v6, v7}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :cond_0
    if-lez v2, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
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

    const/4 v1, 0x0

    new-instance v2, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method
