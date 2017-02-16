.class public Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "black_list"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->tableName:Ljava/lang/String;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "blacklistname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 29
    const-string v2, "blacklistnum"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->columns:[Ljava/lang/String;

    .line 34
    const-string v0, "black_list"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlacklistInfo;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 71
    new-instance v0, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BlacklistInfo;-><init>()V

    .line 73
    .local v0, "blacklistInfo":Lcom/cmdm/control/bean/BlacklistInfo;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 75
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 74
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlacklistInfo;->setType(Ljava/lang/String;)V

    .line 79
    const-string v2, "blacklistname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 78
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistname(Ljava/lang/String;)V

    .line 83
    const-string v2, "blacklistnum"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 82
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistnum(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "blacklistInfo":Lcom/cmdm/control/bean/BlacklistInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 87
    .restart local v0    # "blacklistInfo":Lcom/cmdm/control/bean/BlacklistInfo;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlacklistInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlacklistInfo;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 104
    new-instance v0, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BlacklistInfo;-><init>()V

    .line 106
    .local v0, "blacklistInfo":Lcom/cmdm/control/bean/BlacklistInfo;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 108
    const-string v2, "blacklistname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 107
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistname(Ljava/lang/String;)V

    .line 111
    const-string v2, "blacklistnum"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 110
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "blacklistInfo":Lcom/cmdm/control/bean/BlacklistInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 114
    .restart local v0    # "blacklistInfo":Lcom/cmdm/control/bean/BlacklistInfo;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/BlacklistInfo;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/BlacklistInfo;)Z
    .locals 6
    .param p1, "t"    # Lcom/cmdm/control/bean/BlacklistInfo;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlacklistInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "blacklistname"

    .line 44
    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlacklistInfo;->getBlacklistname()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "blacklistnum"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/BlacklistInfo;->getBlacklistnum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v4, "black_list"

    invoke-virtual {v1, v0, v4}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    .line 47
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 48
    const/4 v1, 0x1

    .line 51
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "rowId":J
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/BlacklistfoStrategy;->insert(Lcom/cmdm/control/bean/BlacklistInfo;)Z

    move-result v0

    return v0
.end method
