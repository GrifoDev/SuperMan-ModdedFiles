.class public Lcom/cmdm/control/database/Impl/WhiteStrategy;
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
    .line 30
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "white"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/WhiteStrategy;->tableName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/WhiteStrategy;->columns:[Ljava/lang/String;

    .line 31
    const-string v0, "white"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/cmdm/control/database/Impl/WhiteStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlackWhite;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 37
    new-instance v0, Lcom/cmdm/control/bean/BlackWhite;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BlackWhite;-><init>()V

    .line 39
    .local v0, "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 40
    const-string v2, "mobile"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setMobile(Ljava/lang/String;)V

    .line 41
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    :cond_0
    :goto_0
    return-object v0

    .line 44
    .restart local v0    # "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/WhiteStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlackWhite;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlackWhite;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 54
    new-instance v0, Lcom/cmdm/control/bean/BlackWhite;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BlackWhite;-><init>()V

    .line 56
    .local v0, "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 57
    const-string v2, "mobile"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setMobile(Ljava/lang/String;)V

    .line 58
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlackWhite;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    :cond_0
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "blackWhite":Lcom/cmdm/control/bean/BlackWhite;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/WhiteStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlackWhite;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/BlackWhite;)Z
    .locals 10
    .param p1, "blackWhite"    # Lcom/cmdm/control/bean/BlackWhite;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 71
    if-eqz p1, :cond_1

    .line 72
    const-string v7, "mobile=?"

    new-array v8, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/cmdm/control/database/Impl/WhiteStrategy;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/BlackWhite;

    .line 73
    .local v1, "dbWhite":Lcom/cmdm/control/bean/BlackWhite;
    const-wide/16 v2, 0x0

    .line 74
    .local v2, "updateCountOrRowId":J
    if-eqz v1, :cond_0

    .line 75
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "addtime"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    const-string v7, "name"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v7, "mobile=?"

    new-array v8, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v4, v7, v8}, Lcom/cmdm/control/database/Impl/WhiteStrategy;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v2, v7

    .line 86
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_1

    .line 90
    .end local v1    # "dbWhite":Lcom/cmdm/control/bean/BlackWhite;
    .end local v2    # "updateCountOrRowId":J
    :goto_1
    return v5

    .line 80
    .restart local v1    # "dbWhite":Lcom/cmdm/control/bean/BlackWhite;
    .restart local v2    # "updateCountOrRowId":J
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "mobile"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getMobile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v7, "name"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlackWhite;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v7, "addtime"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    iget-object v7, p0, Lcom/cmdm/control/database/Impl/WhiteStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v8, "white"

    invoke-virtual {v7, v0, v8}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "dbWhite":Lcom/cmdm/control/bean/BlackWhite;
    .end local v2    # "updateCountOrRowId":J
    :cond_1
    move v5, v6

    .line 90
    goto :goto_1
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cmdm/control/bean/BlackWhite;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/WhiteStrategy;->insert(Lcom/cmdm/control/bean/BlackWhite;)Z

    move-result v0

    return v0
.end method
