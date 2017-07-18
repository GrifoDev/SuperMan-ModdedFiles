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

    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    const-string v0, "harass"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->tableName:Ljava/lang/String;

    const-string v0, "harass"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassType;
    .locals 3

    new-instance v1, Lcom/cmdm/control/bean/HarassType;

    invoke-direct {v1}, Lcom/cmdm/control/bean/HarassType;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "harassid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->typeId:Ljava/lang/String;

    const-string v2, "harassname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->typeName:Ljava/lang/String;

    const-string v2, "smallimg"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->typeThumbnailUrl:Ljava/lang/String;

    const-string v2, "bgimg"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->typeBackgroundUrl:Ljava/lang/String;

    const-string v2, "marknum"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/HarassType;->setMarknum(Ljava/lang/String;)V

    const-string v2, "custom"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/HarassType;->setCustom(Ljava/lang/String;)V

    const-string v2, "sort"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassType;->sysOrder:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassType;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassType;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/HarassType;)Z
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "harassid"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->typeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "harassname"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "smallimg"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->typeThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bgimg"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->typeBackgroundUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "marknum"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassType;->getMarknum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "custom"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassType;->getCustom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sort"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassType;->sysOrder:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v4, "harass"

    invoke-virtual {v1, v0, v4}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/cmdm/control/bean/HarassType;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/HarassTypeStrategy;->insert(Lcom/cmdm/control/bean/HarassType;)Z

    move-result v0

    return v0
.end method
