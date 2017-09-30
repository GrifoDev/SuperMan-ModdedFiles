.class public Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/CaiYinShowingObject;",
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

    const-string v0, "caiyin_showing"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->tableName:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "autoid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "missdn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "settingId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dateType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "settingWeek"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "settingStartDate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "settingEndDate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "settingStartTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "settingEndTime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timing"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "greeting"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "posterUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "last_time"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->columns:[Ljava/lang/String;

    const-string v0, "caiyin_showing"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiYinShowingObject;
    .locals 2

    new-instance v0, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiYinShowingObject;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUid(Ljava/lang/String;)V

    const-string v1, "missdn"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setMissdn(Ljava/lang/String;)V

    const-string v1, "cid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setCid(Ljava/lang/String;)V

    const-string v1, "priority"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPriority(Ljava/lang/String;)V

    const-string v1, "settingId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingId(Ljava/lang/String;)V

    const-string v1, "dateType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setDateType(Ljava/lang/String;)V

    const-string v1, "settingWeek"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingWeek(Ljava/lang/String;)V

    const-string v1, "settingStartDate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartDate(Ljava/lang/String;)V

    const-string v1, "settingEndDate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndDate(Ljava/lang/String;)V

    const-string v1, "settingStartTime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartTime(Ljava/lang/String;)V

    const-string v1, "settingEndTime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndTime(Ljava/lang/String;)V

    const-string v1, "timing"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setTiming(Ljava/lang/String;)V

    const-string v1, "greeting"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setGreeting(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    const-string v1, "posterUrl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPosterUrl(Ljava/lang/String;)V
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

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiYinShowingObject;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiYinShowingObject;
    .locals 2

    new-instance v0, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiYinShowingObject;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUid(Ljava/lang/String;)V

    const-string v1, "missdn"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setMissdn(Ljava/lang/String;)V

    const-string v1, "cid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setCid(Ljava/lang/String;)V

    const-string v1, "priority"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPriority(Ljava/lang/String;)V

    const-string v1, "settingId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingId(Ljava/lang/String;)V

    const-string v1, "dateType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setDateType(Ljava/lang/String;)V

    const-string v1, "settingWeek"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingWeek(Ljava/lang/String;)V

    const-string v1, "settingStartDate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartDate(Ljava/lang/String;)V

    const-string v1, "settingEndDate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndDate(Ljava/lang/String;)V

    const-string v1, "settingStartTime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartTime(Ljava/lang/String;)V

    const-string v1, "settingEndTime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndTime(Ljava/lang/String;)V

    const-string v1, "timing"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setTiming(Ljava/lang/String;)V

    const-string v1, "greeting"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setGreeting(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    const-string v1, "posterUrl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPosterUrl(Ljava/lang/String;)V
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

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiYinShowingObject;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/CaiYinShowingObject;)Z
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "missdn"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "priority"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getPriority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settingId"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dateType"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getDateType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settingWeek"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingWeek()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settingStartDate"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settingEndDate"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settingStartTime"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settingEndTime"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getSettingEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timing"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getTiming()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "greeting"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getGreeting()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "posterUrl"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getPosterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v2, "caiyin_showing"

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

    check-cast p1, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;->insert(Lcom/cmdm/control/bean/CaiYinShowingObject;)Z

    move-result v0

    return v0
.end method
