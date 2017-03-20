.class public Lcom/cmdm/control/database/Impl/HarassTypeStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/HarassType;",
        ">;"
    }
.end annotation


# instance fields
.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    .line 15
    const-string v0, "harass"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->tableName:Ljava/lang/String;

    .line 19
    const-string v0, "harass"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassType;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 25
    new-instance v1, Lcom/cmdm/control/bean/HarassType;

    invoke-direct {v1}, Lcom/cmdm/control/bean/HarassType;-><init>()V

    .line 27
    .local v1, "type":Lcom/cmdm/control/bean/HarassType;
    if-eqz p1, :cond_0

    .line 28
    :try_start_0
    const-string v2, "harassid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->typeId:Ljava/lang/String;

    .line 29
    const-string v2, "harassname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->typeName:Ljava/lang/String;

    .line 30
    const-string v2, "smallimg"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->typeThumbnailUrl:Ljava/lang/String;

    .line 31
    const-string v2, "bgimg"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->typeBackgroundUrl:Ljava/lang/String;

    .line 32
    const-string v2, "marknum"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/HarassType;->setMarknum(Ljava/lang/String;)V

    .line 33
    const-string v2, "custom"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/HarassType;->setCustom(Ljava/lang/String;)V

    .line 34
    const-string v2, "sort"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->sysOrder:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "type":Lcom/cmdm/control/bean/HarassType;
    :goto_0
    return-object v1

    .line 38
    .restart local v1    # "type":Lcom/cmdm/control/bean/HarassType;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassType;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassType;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassType;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/HarassType;)Z
    .locals 6
    .param p1, "t"    # Lcom/cmdm/control/bean/HarassType;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "harassid"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->typeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "harassname"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "smallimg"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->typeThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "bgimg"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->typeBackgroundUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "marknum"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassType;->getMarknum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "custom"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassType;->getCustom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "sort"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->sysOrder:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v4, "harass"

    invoke-virtual {v1, v0, v4}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 65
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 72
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "rowId":J
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v1

    .line 72
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cmdm/control/bean/HarassType;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->insert(Lcom/cmdm/control/bean/HarassType;)Z

    move-result v0

    return v0
.end method
