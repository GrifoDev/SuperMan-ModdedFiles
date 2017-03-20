.class public Lcom/cmdm/control/database/Impl/FraudStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/HarassMobile;",
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
    .line 17
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "fraud_mobile"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/FraudStrategy;->tableName:Ljava/lang/String;

    .line 18
    const-string v0, "fraud_mobile"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassMobile;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 24
    new-instance v1, Lcom/cmdm/control/bean/HarassMobile;

    invoke-direct {v1}, Lcom/cmdm/control/bean/HarassMobile;-><init>()V

    .line 26
    .local v1, "soft":Lcom/cmdm/control/bean/HarassMobile;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 28
    const-string v2, "mobile"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 27
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    .line 30
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 29
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassMobile;->typeId:Ljava/lang/String;

    .line 32
    const-string v2, "typename"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 31
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassMobile;->typeName:Ljava/lang/String;

    .line 34
    const-string v2, "smallimg"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 33
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassMobile;->typeThumbnailUrl:Ljava/lang/String;

    .line 36
    const-string v2, "bgimg"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 35
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassMobile;->typeBackgroundUrl:Ljava/lang/String;

    .line 38
    const-string v2, "mobiledes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 37
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/HarassMobile;->mobileDes:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "soft":Lcom/cmdm/control/bean/HarassMobile;
    :cond_0
    :goto_0
    return-object v1

    .line 42
    .restart local v1    # "soft":Lcom/cmdm/control/bean/HarassMobile;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/FraudStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassMobile;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassMobile;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/FraudStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassMobile;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 6
    .param p1, "t"    # Lcom/cmdm/control/bean/HarassMobile;

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "mobile"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "mobiledes"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassMobile;->mobileDes:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "type"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassMobile;->typeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "typename"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassMobile;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "smallimg"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassMobile;->typeThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "bgimg"

    iget-object v4, p1, Lcom/cmdm/control/bean/HarassMobile;->typeBackgroundUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/cmdm/control/database/Impl/FraudStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v4, "fraud_mobile"

    invoke-virtual {v1, v0, v4}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 69
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 70
    const/4 v1, 0x1

    .line 76
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "rowId":J
    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v1

    .line 76
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cmdm/control/bean/HarassMobile;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/FraudStrategy;->insert(Lcom/cmdm/control/bean/HarassMobile;)Z

    move-result v0

    return v0
.end method
