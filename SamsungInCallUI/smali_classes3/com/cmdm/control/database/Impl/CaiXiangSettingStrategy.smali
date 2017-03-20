.class public Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
.super Lcom/cmdm/control/database/ISettingDBStrategy;
.source "SourceFile"


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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/ISettingDBStrategy;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "caixiang_setting"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->tableName:Ljava/lang/String;

    .line 33
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "isfirst"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "afterCalling"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 34
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

    .line 35
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

    .line 36
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

    .line 37
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

    .line 38
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

    .line 43
    const-string v0, "caixiang_setting"

    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangSetting;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 97
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 99
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 101
    const-string v2, "isfirst"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 100
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    .line 103
    const-string v2, "afterCalling"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 102
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    .line 105
    const-string v2, "contactui"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 104
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    .line 107
    const-string v2, "savelogin"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 106
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 109
    const-string v2, "galleryguide"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 108
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    .line 111
    const-string v2, "isUpdateContact"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 110
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    .line 113
    const-string v2, "showRing"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 112
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    .line 115
    const-string v2, "mode"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 114
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    .line 117
    const-string v2, "phone_num"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 119
    const-string v2, "password"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 121
    const-string v2, "isMatch"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 120
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    .line 123
    const-string v2, "updatemode"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 122
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    .line 125
    const-string v2, "loginmode"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 124
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 127
    const-string v2, "guidemask"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 126
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    .line 129
    const-string v2, "showstyle"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 128
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    .line 131
    const-string v2, "username"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 133
    const-string v2, "signname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 135
    const-string v2, "member"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 134
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    .line 137
    const-string v2, "trimMember"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    .line 139
    const-string v2, "diypath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 138
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    .line 141
    const-string v2, "truck"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 140
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    .line 143
    const-string v2, "shortbind"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 142
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    .line 145
    const-string v2, "woyaoxiu"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 144
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    .line 147
    const-string v2, "sendcaiman"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 146
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    .line 150
    const-string v2, "defaultSystemContentID"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 149
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    .line 152
    const-string v2, "defaultSystemUrl"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 151
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    .line 154
    const-string v2, "defaultUrl"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 153
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    .line 156
    const-string v2, "isOpenTextTrim"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 155
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    .line 158
    const-string v2, "serverAddress"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 157
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setServerAddress(Ljava/lang/String;)V

    .line 160
    const-string v2, "clientid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 159
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    .line 162
    const-string v2, "clientKey"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 161
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v1

    .line 166
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangSetting;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    .locals 6
    .param p1, "t"    # Lcom/cmdm/control/bean/CaiXiangSetting;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->objectToValues(Lcom/cmdm/control/bean/CaiXiangSetting;)Landroid/content/ContentValues;

    move-result-object v0

    .line 51
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    const-string v4, "caixiang_setting"

    invoke-virtual {v1, v0, v4}, Lcom/cmdm/control/database/SettingDBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    .line 52
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 56
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
    check-cast p1, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->insert(Lcom/cmdm/control/bean/CaiXiangSetting;)Z

    move-result v0

    return v0
.end method

.method public objectToValues(Lcom/cmdm/control/bean/CaiXiangSetting;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "t"    # Lcom/cmdm/control/bean/CaiXiangSetting;

    .prologue
    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "isfirst"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "afterCalling"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "contactui"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "savelogin"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "galleryguide"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "isUpdateContact"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "showRing"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "mode"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "phone_num"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "password"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "isMatch"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "updatemode"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "loginmode"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "guidemask"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "showstyle"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "username"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "signname"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "member"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "trimMember"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "diypath"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "truck"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "shortbind"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "woyaoxiu"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "sendcaiman"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "defaultSystemUrl"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "defaultSystemContentID"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "defaultUrl"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "isOpenTextTrim"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "serverAddress"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "clientid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "clientKey"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v0
.end method
