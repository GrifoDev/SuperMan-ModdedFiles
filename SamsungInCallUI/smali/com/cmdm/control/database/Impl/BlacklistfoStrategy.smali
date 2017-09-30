.class public Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/BlacklistInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final columns:[Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    const-string v0, "black_list"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->tableName:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "blacklistname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "blacklistnum"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->columns:[Ljava/lang/String;

    const-string v0, "black_list"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlacklistInfo;
    .locals 2

    new-instance v0, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BlacklistInfo;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/BlacklistInfo;->setType(Ljava/lang/String;)V

    const-string v1, "blacklistname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistname(Ljava/lang/String;)V

    const-string v1, "blacklistnum"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistnum(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlacklistInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlacklistInfo;
    .locals 2

    new-instance v0, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BlacklistInfo;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "blacklistname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistname(Ljava/lang/String;)V

    const-string v1, "blacklistnum"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlacklistInfo;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/BlacklistInfo;)Z
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlacklistInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "blacklistname"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlacklistInfo;->getBlacklistname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "blacklistnum"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlacklistInfo;->getBlacklistnum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v2, "black_list"

    invoke-virtual {v1, v0, v2}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->insert(Lcom/cmdm/control/bean/BlacklistInfo;)Z

    move-result v0

    return v0
.end method
