.class public Lcom/cmdm/control/logic/j;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field public cd:Lcom/cmdm/control/dao/d;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/logic/j;->cd:Lcom/cmdm/control/dao/d;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/j;->bW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/j;->v:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/logic/j;->bX:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/cmdm/control/logic/j;->bY:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/j;->bZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/dao/d;->aN()Lcom/cmdm/control/dao/d;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/j;->cd:Lcom/cmdm/control/dao/d;

    new-instance v0, Lcom/cmdm/control/logic/b;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->bW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->clientid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->clientKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->bZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->bX:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/logic/j;->bY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public C()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/cmdm/control/bean/CaiXiangSetting;)I
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v1, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->objectToValues(Lcom/cmdm/control/bean/CaiXiangSetting;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v2}, Lcom/cmdm/control/database/SettingDBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u66f4\u65b0\u4e86\u672c\u5730\u8bbe\u7f6e\u4fe1\u606f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",row="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v1, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/SettingDBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bj()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bk()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bl()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bm()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bn()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bo()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bp()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bq()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public br()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bs()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bt()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bu()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bv()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bw()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bx()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public by()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultSystemContentID()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, "22000000001467"

    goto :goto_0
.end method

.method public getDefaultSystemUrl()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiyPath()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoginmode()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public getMode()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, "7"

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhone_num()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSignname()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpdatemode()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAfterCalling(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setContactui(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultSystemContentID(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultSystemUrl(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultUrl(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDiyPath(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGalleryguide(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGuidemask(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsMatch(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsUpdateContact(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLoginmode(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMember(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPhone_num(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSavelogin(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSendcaiman(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowRing(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowstyle(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSignname(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextTrim(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTrimMember(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTryLuck(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUpdatemode(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public y()Lcom/cmdm/control/bean/CaiXiangSetting;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v2, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v2, v0}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/cmdm/control/database/SettingDBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangSetting;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
