.class public Lcom/cmdm/control/database/Impl/CxContactStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "contact_info"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CxContactStrategy;->tableName:Ljava/lang/String;

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "autoid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contactnum"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 28
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

    .line 29
    const-string v2, "namepinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photouri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "set_time"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CxContactStrategy;->columns:[Ljava/lang/String;

    .line 39
    const-string v0, "contact_info"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CxContactStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CxContact;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "cxcontact":Lcom/cmdm/control/bean/CxContact;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 50
    const-string v4, "contactnum"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "phonenum":Ljava/lang/String;
    new-instance v1, Lcom/cmdm/control/bean/CxContact;

    invoke-direct {v1, v3}, Lcom/cmdm/control/bean/CxContact;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cxcontact":Lcom/cmdm/control/bean/CxContact;
    .local v1, "cxcontact":Lcom/cmdm/control/bean/CxContact;
    move-object v0, v1

    .end local v1    # "cxcontact":Lcom/cmdm/control/bean/CxContact;
    .end local v3    # "phonenum":Ljava/lang/String;
    .restart local v0    # "cxcontact":Lcom/cmdm/control/bean/CxContact;
    :cond_0
    move-object v4, v0

    .line 63
    :goto_0
    return-object v4

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CxContactStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CxContact;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CxContact;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "cxcontact":Lcom/cmdm/control/bean/CxContact;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 86
    const-string v4, "contactnum"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 85
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "phonenum":Ljava/lang/String;
    new-instance v1, Lcom/cmdm/control/bean/CxContact;

    invoke-direct {v1, v3}, Lcom/cmdm/control/bean/CxContact;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cxcontact":Lcom/cmdm/control/bean/CxContact;
    .local v1, "cxcontact":Lcom/cmdm/control/bean/CxContact;
    move-object v0, v1

    .end local v1    # "cxcontact":Lcom/cmdm/control/bean/CxContact;
    .end local v3    # "phonenum":Ljava/lang/String;
    .restart local v0    # "cxcontact":Lcom/cmdm/control/bean/CxContact;
    :cond_0
    move-object v4, v0

    .line 99
    :goto_0
    return-object v4

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CxContactStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CxContact;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/CxContact;)Z
    .locals 1
    .param p1, "t"    # Lcom/cmdm/control/bean/CxContact;

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cmdm/control/bean/CxContact;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CxContactStrategy;->insert(Lcom/cmdm/control/bean/CxContact;)Z

    move-result v0

    return v0
.end method
