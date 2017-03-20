.class public Lcom/cmdm/control/logic/j;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->cd:Lcom/cmdm/control/dao/d;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->bW:Ljava/lang/String;

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->v:Ljava/lang/String;

    .line 28
    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->bX:Ljava/lang/String;

    .line 29
    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/j;->bY:I

    .line 32
    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->bZ:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/cmdm/control/dao/d;->aN()Lcom/cmdm/control/dao/d;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->cd:Lcom/cmdm/control/dao/d;

    .line 38
    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 40
    .local v0, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->bW:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->v:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->clientid:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->clientKey:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->bZ:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/j;->bX:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/j;->bY:I

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public C()Z
    .locals 4

    .prologue
    .line 1120
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1121
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1122
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1123
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1124
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1125
    const/4 v2, 0x1

    .line 1130
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1130
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(Lcom/cmdm/control/bean/CaiXiangSetting;)I
    .locals 7
    .param p1, "mCaiXiangSetting"    # Lcom/cmdm/control/bean/CaiXiangSetting;

    .prologue
    const/4 v5, 0x0

    .line 87
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v4, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
    new-instance v1, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    .line 90
    .local v1, "dbContext":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    invoke-virtual {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->objectToValues(Lcom/cmdm/control/bean/CaiXiangSetting;)Landroid/content/ContentValues;

    move-result-object v0

    .line 91
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, v0, v5, v5}, Lcom/cmdm/control/database/SettingDBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 92
    .local v2, "row":I
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u66f4\u65b0\u4e86\u672c\u5730\u8bbe\u7f6e\u4fe1\u606f"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",row="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 93
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "loginMode"    # Ljava/lang/String;
    .param p3, "login"    # Ljava/lang/String;
    .param p4, "signname"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "trimMember"    # Ljava/lang/String;
    .param p7, "member"    # Ljava/lang/String;

    .prologue
    .line 576
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 577
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v1, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v1, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v1, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v1, p7}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 600
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 587
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 588
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v1, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v1, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v1, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v1, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v1, p7}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;

    .prologue
    .line 541
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/client/Setting;->setPackageName(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 543
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v1, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 558
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 549
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 550
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    .locals 4
    .param p1, "mCaiXiangSetting"    # Lcom/cmdm/control/bean/CaiXiangSetting;

    .prologue
    .line 106
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    .line 107
    iget-object v3, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    .line 106
    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    .line 108
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
    new-instance v0, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    .line 110
    .local v0, "dbContext":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/SettingDBContext;->insert(Ljava/lang/Object;)Z

    move-result v1

    .line 112
    .local v1, "row":Z
    return v1
.end method

.method public bj()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 124
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 133
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bk()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 158
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bl()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 196
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 205
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bm()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 234
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 243
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bn()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 272
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 281
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bo()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 310
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 319
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bp()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 348
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 357
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bq()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 386
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 395
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public br()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 632
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 633
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 642
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 642
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bs()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 744
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 745
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 747
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 754
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 754
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bt()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 782
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 783
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 784
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 785
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 792
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 792
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bu()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 894
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 895
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 896
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 897
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 898
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 904
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 904
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bv()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 932
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 933
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 934
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 935
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 936
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 937
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 942
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 942
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bw()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1174
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1175
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1176
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1177
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1178
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1179
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1184
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bx()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1210
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1211
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1212
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1213
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1215
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1220
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public by()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1246
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1247
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1248
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1249
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1250
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1251
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1256
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1256
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public getDefaultSystemContentID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1044
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1045
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1046
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1047
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1048
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1053
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1053
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "22000000001467"

    goto :goto_0
.end method

.method public getDefaultSystemUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1007
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1008
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1009
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1010
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1011
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1016
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1016
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1083
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1084
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1085
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1086
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1087
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1092
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDiyPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 970
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 971
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 972
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 973
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 974
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 979
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 979
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLoginmode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 707
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 708
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 710
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 716
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 716
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "1"

    goto :goto_0
.end method

.method public getMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 424
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 431
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 431
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "7"

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 496
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 497
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 499
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 505
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPhone_num()Ljava/lang/String;
    .locals 4

    .prologue
    .line 459
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 460
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 462
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 468
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSignname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 857
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 858
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 860
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 861
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 866
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 866
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUpdatemode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 670
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 671
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 673
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 674
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 679
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 4

    .prologue
    .line 820
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 821
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 823
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 824
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 829
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 829
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 2
    .param p1, "isfirst"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 139
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 150
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 143
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 144
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .param p1, "isbind"    # Ljava/lang/String;

    .prologue
    .line 1158
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1159
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1160
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1170
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1163
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1164
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1167
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)V
    .locals 2
    .param p1, "isxiu"    # Ljava/lang/String;

    .prologue
    .line 1194
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1195
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1196
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1206
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1199
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1200
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1203
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "signname"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 612
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 625
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 617
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 618
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAfterCalling(Ljava/lang/String;)V
    .locals 2
    .param p1, "afterCalling"    # Ljava/lang/String;

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 177
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 188
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 181
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 182
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setContactui(Ljava/lang/String;)V
    .locals 2
    .param p1, "contactui"    # Ljava/lang/String;

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 215
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 226
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 219
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 220
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultSystemContentID(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultSystemContentID"    # Ljava/lang/String;

    .prologue
    .line 1062
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1063
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1065
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1076
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1068
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1070
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1073
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultSystemUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultSystemUrl"    # Ljava/lang/String;

    .prologue
    .line 1025
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1026
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1027
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1037
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1030
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1031
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1034
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultUrl"    # Ljava/lang/String;

    .prologue
    .line 1101
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1102
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1103
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1113
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1106
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1107
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1110
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDiyPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "diyPath"    # Ljava/lang/String;

    .prologue
    .line 988
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 989
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 990
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1000
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 993
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 994
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 997
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 998
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGalleryguide(Ljava/lang/String;)V
    .locals 2
    .param p1, "galleryguide"    # Ljava/lang/String;

    .prologue
    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 291
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 302
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 295
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 296
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGuidemask(Ljava/lang/String;)V
    .locals 2
    .param p1, "guidemask"    # Ljava/lang/String;

    .prologue
    .line 763
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 764
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 765
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 775
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 768
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 769
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 772
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "isMatch"    # Ljava/lang/String;

    .prologue
    .line 651
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 652
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 663
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 656
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 657
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsUpdateContact(Ljava/lang/String;)V
    .locals 2
    .param p1, "isUpdateContact"    # Ljava/lang/String;

    .prologue
    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 329
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 340
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 333
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 334
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLoginmode(Ljava/lang/String;)V
    .locals 2
    .param p1, "loginmode"    # Ljava/lang/String;

    .prologue
    .line 725
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 726
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 737
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 730
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 731
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMember(Ljava/lang/String;)V
    .locals 2
    .param p1, "member"    # Ljava/lang/String;

    .prologue
    .line 913
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 914
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 915
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 925
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 918
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 919
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 922
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 440
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 441
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 452
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 445
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 446
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 514
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 515
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 526
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 519
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 520
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPhone_num(Ljava/lang/String;)V
    .locals 2
    .param p1, "phone_num"    # Ljava/lang/String;

    .prologue
    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 478
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 489
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 482
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 483
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSavelogin(Ljava/lang/String;)V
    .locals 2
    .param p1, "savelogin"    # Ljava/lang/String;

    .prologue
    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 253
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 264
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 257
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 258
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSendcaiman(Ljava/lang/String;)V
    .locals 2
    .param p1, "issend"    # Ljava/lang/String;

    .prologue
    .line 1230
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1231
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1232
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1242
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1235
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1236
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1239
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowRing(Ljava/lang/String;)V
    .locals 2
    .param p1, "showRing"    # Ljava/lang/String;

    .prologue
    .line 366
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 367
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 378
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 371
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 372
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowstyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "showstyle"    # Ljava/lang/String;

    .prologue
    .line 801
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 802
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 813
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 806
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 807
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSignname(Ljava/lang/String;)V
    .locals 2
    .param p1, "signname"    # Ljava/lang/String;

    .prologue
    .line 875
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 876
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 877
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 887
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 880
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 881
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 884
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextTrim(Ljava/lang/String;)V
    .locals 2
    .param p1, "textTrim"    # Ljava/lang/String;

    .prologue
    .line 1139
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1140
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1141
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1151
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1144
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1145
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1148
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTrimMember(Ljava/lang/String;)V
    .locals 2
    .param p1, "trimMember"    # Ljava/lang/String;

    .prologue
    .line 951
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 952
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 953
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 963
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 956
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 957
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTryLuck(Ljava/lang/String;)V
    .locals 2
    .param p1, "tryluck"    # Ljava/lang/String;

    .prologue
    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 405
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 416
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 409
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 410
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUpdatemode(Ljava/lang/String;)V
    .locals 2
    .param p1, "updatemode"    # Ljava/lang/String;

    .prologue
    .line 688
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 689
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 700
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 693
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 694
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 838
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/j;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 839
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 840
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 850
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 843
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 844
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0, v1}, Lcom/cmdm/control/logic/j;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public y()Lcom/cmdm/control/bean/CaiXiangSetting;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 60
    :try_start_0
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    .line 61
    iget-object v4, p0, Lcom/cmdm/control/logic/j;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {v3, v4}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    .line 62
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
    new-instance v0, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    .line 65
    .local v0, "dbContext":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/cmdm/control/database/SettingDBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 66
    .local v2, "mCaiXiangSetting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 69
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/CaiXiangSetting;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "dbContext":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    .end local v2    # "mCaiXiangSetting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
    :goto_0
    return-object v4

    .restart local v0    # "dbContext":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    .restart local v2    # "mCaiXiangSetting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
    :cond_0
    move-object v4, v5

    .line 72
    goto :goto_0

    .line 74
    .end local v0    # "dbContext":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    .end local v2    # "mCaiXiangSetting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v4, v5

    .line 75
    goto :goto_0
.end method
