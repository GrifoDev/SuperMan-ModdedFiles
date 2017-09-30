.class public Lcom/cmdm/control/logic/b;
.super Ljava/lang/Object;


# instance fields
.field ca:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/cmdm/control/bean/CaiXiangSetting;)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v1, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->objectToValues(Lcom/cmdm/control/bean/CaiXiangSetting;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v2}, Lcom/cmdm/control/database/SettingDBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    .locals 2

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v1, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/database/SettingDBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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

.method public B()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public C()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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

.method public D()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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

.method public E()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public F()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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

.method public G()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public H()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public I()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public J()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public K()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public L()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public M()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public N()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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

.method public O()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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

.method public P()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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

.method public Q()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

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

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    iget-object v0, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultSystemContentID()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setServerAddress(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setServerAddress(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
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
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public y()Lcom/cmdm/control/bean/CaiXiangSetting;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v2, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v2, v1}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    invoke-virtual {v2, v0, v0}, Lcom/cmdm/control/database/SettingDBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    :cond_0
    return-object v0
.end method

.method public z()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

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

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
