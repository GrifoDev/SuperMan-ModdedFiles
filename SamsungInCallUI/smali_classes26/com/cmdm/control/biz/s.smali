.class public Lcom/cmdm/control/biz/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    .line 21
    iput-object p1, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 72
    new-instance v2, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    .line 73
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/HarassMarkStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 75
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    const/4 v1, 0x0

    .line 76
    .local v1, "size":I
    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 77
    if-lez v1, :cond_0

    .line 78
    const/4 v3, 0x1

    .line 80
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Lcom/cmdm/control/bean/HarassMobile;
    .locals 3
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 88
    new-instance v1, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    .line 89
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/HarassMarkStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 91
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/DBContext;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/HarassMobile;

    return-object v2
.end method

.method public c(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 3
    .param p1, "numList"    # Lcom/cmdm/control/bean/HarassMobile;

    .prologue
    .line 25
    new-instance v1, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v2, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    .line 26
    .local v1, "strategy":Lcom/cmdm/control/database/Impl/HarassMarkStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 31
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public d(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 9
    .param p1, "t"    # Lcom/cmdm/control/bean/HarassMobile;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 49
    new-instance v3, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v6, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    .line 50
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/HarassMarkStrategy;
    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 52
    .local v1, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    const/4 v2, 0x0

    .line 53
    .local v2, "size":I
    if-eqz p1, :cond_0

    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "harassid"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v6, "harassname"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v6, "mobile"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v6, "smallimg"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v6, "bgimg"

    iget-object v7, p1, Lcom/cmdm/control/bean/HarassMobile;->typeBackgroundUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v6, "guishudi"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassMobile;->getGuishudi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v6, "date"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassMobile;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v6, "mobile=?"

    new-array v7, v4, [Ljava/lang/String;

    iget-object v8, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-virtual {v1, v0, v6, v7}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 64
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    if-lez v2, :cond_1

    .line 67
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
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

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/HarassMobile;>;"
    new-instance v2, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;

    iget-object v3, p0, Lcom/cmdm/control/biz/s;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/HarassMarkStrategy;-><init>(Landroid/content/Context;)V

    .line 38
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/HarassMarkStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 41
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/HarassMobile;>;"
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v3

    goto :goto_0
.end method
