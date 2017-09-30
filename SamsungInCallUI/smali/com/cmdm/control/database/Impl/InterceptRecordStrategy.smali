.class public Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;


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

    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    const-string v0, "intercept"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;->tableName:Ljava/lang/String;

    const-string v0, "intercept"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassMobile;
    .locals 2

    new-instance v0, Lcom/cmdm/control/bean/HarassMobile;

    invoke-direct {v0}, Lcom/cmdm/control/bean/HarassMobile;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "harassname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmdm/control/bean/HarassMobile;->typeName:Ljava/lang/String;

    const-string v1, "mobile"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    const-string v1, "mobiledes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmdm/control/bean/HarassMobile;->mobileDes:Ljava/lang/String;

    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/HarassMobile;->setDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassMobile;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassMobile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/HarassMobile;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/HarassMobile;)Z
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "harassname"

    iget-object v2, p1, Lcom/cmdm/control/bean/HarassMobile;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mobile"

    iget-object v2, p1, Lcom/cmdm/control/bean/HarassMobile;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mobiledes"

    iget-object v2, p1, Lcom/cmdm/control/bean/HarassMobile;->mobileDes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/HarassMobile;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v2, "intercept"

    invoke-virtual {v1, v0, v2}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/cmdm/control/bean/HarassMobile;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/InterceptRecordStrategy;->insert(Lcom/cmdm/control/bean/HarassMobile;)Z

    move-result v0

    return v0
.end method
