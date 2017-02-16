.class public Lcom/cmdm/control/database/Impl/ActivationListStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/Software;",
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
    .line 21
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "activation_list"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/ActivationListStrategy;->tableName:Ljava/lang/String;

    .line 23
    const-string v0, "activation_list"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/Software;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 29
    new-instance v1, Lcom/cmdm/control/bean/Software;

    invoke-direct {v1}, Lcom/cmdm/control/bean/Software;-><init>()V

    .line 31
    .local v1, "soft":Lcom/cmdm/control/bean/Software;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 33
    const-string v2, "softname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 32
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/Software;->setSoftwareName(Ljava/lang/String;)V

    .line 36
    const-string v2, "softpackage"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 35
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/Software;->setSoftwarePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "soft":Lcom/cmdm/control/bean/Software;
    :cond_0
    :goto_0
    return-object v1

    .line 40
    .restart local v1    # "soft":Lcom/cmdm/control/bean/Software;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/ActivationListStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/Software;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/Software;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/ActivationListStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/Software;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/Software;)Z
    .locals 6
    .param p1, "t"    # Lcom/cmdm/control/bean/Software;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "softname"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/Software;->getSoftwareName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "softpackage"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/Software;->getSoftwarePackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/cmdm/control/database/Impl/ActivationListStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v4, "activation_list"

    invoke-virtual {v1, v0, v4}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    .line 62
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 66
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
    check-cast p1, Lcom/cmdm/control/bean/Software;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/ActivationListStrategy;->insert(Lcom/cmdm/control/bean/Software;)Z

    move-result v0

    return v0
.end method
