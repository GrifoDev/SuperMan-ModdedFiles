.class public Lcom/cmdm/control/database/Impl/CxContactStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/CxContact;",
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

    const-string v0, "contact_info"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CxContactStrategy;->tableName:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "autoid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contactnum"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contactname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defaultcontactnum"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "statu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "namepinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photouri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "set_time"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CxContactStrategy;->columns:[Ljava/lang/String;

    const-string v0, "contact_info"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CxContactStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CxContact;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "contactnum"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/cmdm/control/bean/CxContact;

    invoke-direct {v0, v2}, Lcom/cmdm/control/bean/CxContact;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CxContactStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CxContact;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CxContact;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "contactnum"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/cmdm/control/bean/CxContact;

    invoke-direct {v0, v2}, Lcom/cmdm/control/bean/CxContact;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CxContactStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CxContact;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/CxContact;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/cmdm/control/bean/CxContact;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CxContactStrategy;->insert(Lcom/cmdm/control/bean/CxContact;)Z

    move-result v0

    return v0
.end method
