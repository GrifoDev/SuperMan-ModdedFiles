.class public Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
.super Lcom/cmdm/control/database/ISettingDBStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/ISettingDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/CaiXiangSetting;",
        ">;"
    }
.end annotation


# instance fields
.field private final columns:[Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/cmdm/control/database/ISettingDBStrategy;-><init>(Landroid/content/Context;)V

    const-string v0, "caixiang_setting"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->tableName:Ljava/lang/String;

    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "isfirst"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "afterCalling"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contactui"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "savelogin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "galleryguide"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "isUpdateContact"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "showRing"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phone_num"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "isMatch"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "updatemode"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "loginmode"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "guidemask"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "showstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "username"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "signname"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "member"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "trimMember"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "diypath"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "truck"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "shortbind"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "woyaoxiu"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sendcaiman"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "defaultSystemUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "defaultSystemContentID"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "defaultUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "isOpenTextTrim"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "serverAddress"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "clientid"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "clientKey"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->columns:[Ljava/lang/String;

    const-string v0, "caixiang_setting"

    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangSetting;
    .locals 2

    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "isfirst"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    const-string v1, "afterCalling"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    const-string v1, "contactui"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    const-string v1, "savelogin"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    const-string v1, "galleryguide"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    const-string v1, "isUpdateContact"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    const-string v1, "showRing"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    const-string v1, "mode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    const-string v1, "phone_num"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    const-string v1, "password"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    const-string v1, "isMatch"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    const-string v1, "updatemode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    const-string v1, "loginmode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    const-string v1, "guidemask"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    const-string v1, "showstyle"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    const-string v1, "username"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    const-string v1, "signname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    const-string v1, "member"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    const-string v1, "trimMember"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    const-string v1, "diypath"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    const-string v1, "truck"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    const-string v1, "shortbind"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    const-string v1, "woyaoxiu"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    const-string v1, "sendcaiman"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    const-string v1, "defaultSystemContentID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    const-string v1, "defaultSystemUrl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    const-string v1, "defaultUrl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    const-string v1, "isOpenTextTrim"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    const-string v1, "serverAddress"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setServerAddress(Ljava/lang/String;)V

    const-string v1, "clientid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    const-string v1, "clientKey"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V
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

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangSetting;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->objectToValues(Lcom/cmdm/control/bean/CaiXiangSetting;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    const-string v2, "caixiang_setting"

    invoke-virtual {v1, v0, v2}, Lcom/cmdm/control/database/SettingDBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

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

    check-cast p1, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->insert(Lcom/cmdm/control/bean/CaiXiangSetting;)Z

    move-result v0

    return v0
.end method

.method public objectToValues(Lcom/cmdm/control/bean/CaiXiangSetting;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "isfirst"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "afterCalling"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contactui"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "savelogin"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "galleryguide"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isUpdateContact"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "showRing"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mode"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phone_num"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isMatch"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "updatemode"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "loginmode"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "guidemask"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "showstyle"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "username"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signname"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "member"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "trimMember"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "diypath"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "truck"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shortbind"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "woyaoxiu"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sendcaiman"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "defaultSystemUrl"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "defaultSystemContentID"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "defaultUrl"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isOpenTextTrim"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serverAddress"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clientid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clientKey"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
