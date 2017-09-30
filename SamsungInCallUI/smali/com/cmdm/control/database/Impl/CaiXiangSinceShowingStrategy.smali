.class public Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
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

    const-string v0, "caixiang_sinceshow"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->tableName:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "missdn"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "set_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "guo_qi_date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "greeting"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "show_method"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "thum_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "iscurrent"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "isgif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->columns:[Ljava/lang/String;

    const-string v0, "caixiang_sinceshow"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 2

    new-instance v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "missdn"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    const-string v1, "cid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    const-string v1, "set_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setSetDate(Ljava/lang/String;)V

    const-string v1, "guo_qi_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGuoQiDate(Ljava/lang/String;)V

    const-string v1, "greeting"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGreeting(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    const-string v1, "start_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setStart_time(Ljava/lang/String;)V

    const-string v1, "end_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setEnd_time(Ljava/lang/String;)V

    const-string v1, "show_method"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    const-string v1, "thum_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    const-string v1, "description"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDescription(Ljava/lang/String;)V

    const-string v1, "iscurrent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIscurrent(Ljava/lang/String;)V

    const-string v1, "isgif"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V
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

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 2

    new-instance v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "missdn"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    const-string v1, "cid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    const-string v1, "set_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setSetDate(Ljava/lang/String;)V

    const-string v1, "guo_qi_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGuoQiDate(Ljava/lang/String;)V

    const-string v1, "greeting"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGreeting(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    const-string v1, "start_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setStart_time(Ljava/lang/String;)V

    const-string v1, "end_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setEnd_time(Ljava/lang/String;)V

    const-string v1, "show_method"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    const-string v1, "thum_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    const-string v1, "description"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDescription(Ljava/lang/String;)V

    const-string v1, "iscurrent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIscurrent(Ljava/lang/String;)V

    const-string v1, "isgif"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V
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

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/CaiXiangShowingObject;)Z
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "missdn"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set_date"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getSetDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "guo_qi_date"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getGuoQiDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "greeting"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getGreeting()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_time"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getStart_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "end_time"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getEnd_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "show_method"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getShow_method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "thum_url"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getThum_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iscurrent"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getIscurrent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isgif"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getIsgif()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v2, "caixiang_sinceshow"

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

    check-cast p1, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->insert(Lcom/cmdm/control/bean/CaiXiangShowingObject;)Z

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update caixiang_sinceshow set show_method=4 ,iscurrent=0 where show_method=3 and cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/database/DBHelper;->excute(Ljava/lang/String;)V

    return-void
.end method

.method public updateCancelCurrent()V
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v1, "update caixiang_sinceshow set show_method=4 ,iscurrent=0 where show_method=3"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/database/DBHelper;->excute(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrent(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v1, "update caixiang_sinceshow set show_method=4 ,iscurrent=0 where show_method=3"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/database/DBHelper;->excute(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update caixiang_sinceshow set show_method=3 ,iscurrent=1 where show_method=4 and cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/database/DBHelper;->excute(Ljava/lang/String;)V

    return-void
.end method
