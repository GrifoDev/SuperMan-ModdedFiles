.class public Lcom/cmdm/control/database/Impl/BlackStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/BlackWhite;",
        ">;"
    }
.end annotation


# instance fields
.field private final columns:[Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "black"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/BlackStrategy;->tableName:Ljava/lang/String;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "interceptcount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/BlackStrategy;->columns:[Ljava/lang/String;

    .line 32
    const-string v0, "black"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/cmdm/control/database/Impl/BlackStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlackWhite;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 38
    new-instance v0, Lcom/cmdm/control/bean/BlackWhite;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BlackWhite;-><init>()V

    .line 40
    .local v0, "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 41
    const-string v2, "mobile"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setMobile(Ljava/lang/String;)V

    .line 42
    const-string v2, "interceptcount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setInterceptCount(I)V

    .line 43
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    :cond_0
    :goto_0
    return-object v0

    .line 46
    .restart local v0    # "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/BlackStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlackWhite;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlackWhite;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 56
    new-instance v0, Lcom/cmdm/control/bean/BlackWhite;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BlackWhite;-><init>()V

    .line 58
    .local v0, "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 59
    const-string v2, "mobile"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setMobile(Ljava/lang/String;)V

    .line 60
    const-string v2, "interceptcount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setInterceptCount(I)V

    .line 61
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    :cond_0
    :goto_0
    return-object v0

    .line 64
    .restart local v0    # "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/BlackStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlackWhite;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 10
    .param p1, "blackWhite"    # Lcom/cmdm/control/bean/BlackWhite;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 74
    if-eqz p1, :cond_1

    .line 75
    const-string v7, "mobile=?"

    new-array v8, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/cmdm/control/database/Impl/BlackStrategy;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/BlackWhite;

    .line 76
    .local v1, "dbBlack":Lcom/cmdm/control/bean/BlackWhite;
    const-wide/16 v2, 0x0

    .line 77
    .local v2, "updateCountOrRowId":J
    if-eqz v1, :cond_0

    .line 78
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "addtime"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string v7, "name"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v7, "mobile=?"

    new-array v8, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v4, v7, v8}, Lcom/cmdm/control/database/Impl/BlackStrategy;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v2, v7

    .line 90
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_1

    .line 94
    .end local v1    # "dbBlack":Lcom/cmdm/control/bean/BlackWhite;
    .end local v2    # "updateCountOrRowId":J
    :goto_1
    return v5

    .line 83
    .restart local v1    # "dbBlack":Lcom/cmdm/control/bean/BlackWhite;
    .restart local v2    # "updateCountOrRowId":J
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "mobile"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v7, "interceptcount"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getInterceptCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v7, "name"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v7, "addtime"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    iget-object v7, p0, Lcom/cmdm/control/database/Impl/BlackStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v8, "black"

    invoke-virtual {v7, v0, v8}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "dbBlack":Lcom/cmdm/control/bean/BlackWhite;
    .end local v2    # "updateCountOrRowId":J
    :cond_1
    move v5, v6

    .line 94
    goto :goto_1
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cmdm/control/bean/BlackWhite;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/BlackStrategy;->insert(Lcom/cmdm/control/bean/BlackWhite;)Z

    move-result v0

    return v0
.end method
