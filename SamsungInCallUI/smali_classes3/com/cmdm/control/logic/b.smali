.class public Lcom/cmdm/control/logic/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ca:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private a(Lcom/cmdm/control/bean/CaiXiangSetting;)I
    .locals 6
    .param p1, "mCaiXiangSetting"    # Lcom/cmdm/control/bean/CaiXiangSetting;

    .prologue
    const/4 v5, 0x0

    .line 236
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v4, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    .line 237
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
    new-instance v1, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v1, v3}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    .line 239
    .local v1, "dbContext":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    invoke-virtual {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;->objectToValues(Lcom/cmdm/control/bean/CaiXiangSetting;)Landroid/content/ContentValues;

    move-result-object v0

    .line 240
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, v0, v5, v5}, Lcom/cmdm/control/database/SettingDBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 242
    .local v2, "row":I
    return v2
.end method

.method private b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    .locals 4
    .param p1, "mCaiXiangSetting"    # Lcom/cmdm/control/bean/CaiXiangSetting;

    .prologue
    .line 253
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v3, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    .line 254
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
    new-instance v0, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    .line 256
    .local v0, "dbContext":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    invoke-virtual {v0, p1}, Lcom/cmdm/control/database/SettingDBContext;->insert(Ljava/lang/Object;)Z

    move-result v1

    .line 258
    .local v1, "row":Z
    return v1
.end method


# virtual methods
.method public A()Z
    .locals 4

    .prologue
    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 304
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getAfterCalling()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    const/4 v2, 0x1

    .line 313
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public B()Z
    .locals 4

    .prologue
    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 342
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getContactui()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const/4 v2, 0x0

    .line 351
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public C()Z
    .locals 4

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 105
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTextTrim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const/4 v2, 0x1

    .line 114
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public D()Z
    .locals 4

    .prologue
    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 380
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    const/4 v2, 0x1

    .line 389
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public E()Z
    .locals 4

    .prologue
    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 450
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGalleryguide()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    const/4 v2, 0x0

    .line 459
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public F()Z
    .locals 4

    .prologue
    .line 487
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 488
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsUpdateContact()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    const/4 v2, 0x1

    .line 497
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public G()Z
    .locals 4

    .prologue
    .line 525
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 526
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 529
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTryLuck()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    const/4 v2, 0x0

    .line 535
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public H()Z
    .locals 4

    .prologue
    .line 563
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 564
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 566
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 567
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowRing()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    const/4 v2, 0x0

    .line 573
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 573
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public I()Z
    .locals 4

    .prologue
    .line 617
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 618
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 620
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 621
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShortbind()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    const/4 v2, 0x0

    .line 627
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 627
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public J()Z
    .locals 4

    .prologue
    .line 653
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 654
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 656
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getWoyaoxiu()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    const/4 v2, 0x0

    .line 663
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public K()Z
    .locals 4

    .prologue
    .line 689
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 690
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 692
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 693
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSendcaiman()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    const/4 v2, 0x0

    .line 699
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 699
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public L()Z
    .locals 4

    .prologue
    .line 817
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 818
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 819
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 820
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 821
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsMatch()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    const/4 v2, 0x0

    .line 827
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 827
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public M()Z
    .locals 4

    .prologue
    .line 929
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 930
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 931
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 932
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getGuidemask()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    const/4 v2, 0x0

    .line 939
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public N()Z
    .locals 4

    .prologue
    .line 967
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 968
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 970
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 971
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getShowstyle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 972
    const/4 v2, 0x1

    .line 977
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 977
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public O()Z
    .locals 4

    .prologue
    .line 1079
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1080
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1081
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1082
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1083
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMember()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    const/4 v2, 0x1

    .line 1089
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1089
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public P()Z
    .locals 4

    .prologue
    .line 1117
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1118
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1119
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1120
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1121
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getTrimMember()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1122
    const/4 v2, 0x1

    .line 1127
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1127
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Q()I
    .locals 4

    .prologue
    .line 1305
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1306
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1307
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1308
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1309
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1314
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1314
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 213
    .local v0, "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 226
    .end local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 218
    .restart local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 219
    .restart local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v0, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "login_type"    # I
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "savelogin"    # Ljava/lang/String;
    .param p5, "f_clientId"    # Ljava/lang/String;
    .param p6, "f_clientKey"    # Ljava/lang/String;

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    .line 180
    .local v0, "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v0, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 208
    .end local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 193
    .restart local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 194
    .restart local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientid(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setClientKey(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0, v0}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v0    # "caixiangSettingObject":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v1

    goto :goto_0
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
    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 74
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p7}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 97
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 84
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 85
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, p4}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, p5}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, p6}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, p7}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 95
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
    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/client/Setting;->setPackageName(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 427
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 442
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 433
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 434
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1, p3}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultSystemContentID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1229
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1230
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1231
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1232
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemContentID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1238
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1238
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "22000000001467"

    goto :goto_0
.end method

.method public getDefaultSystemUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1192
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1193
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1194
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1195
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1196
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultSystemUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1201
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1201
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1268
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1269
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1270
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1271
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1272
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDefaultUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1277
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1277
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDiyPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1155
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1156
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1157
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1158
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1159
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getDiyPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1164
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLoginmode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 892
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 893
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 896
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getLoginmode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 901
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "1"

    goto :goto_0
.end method

.method public getMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 707
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 708
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 709
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 710
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 715
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "7"

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 780
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 781
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 783
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 784
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 789
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 789
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPhone_num()Ljava/lang/String;
    .locals 4

    .prologue
    .line 743
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 744
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 746
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 747
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 752
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSignname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1042
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1043
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1044
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1045
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1046
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSignname()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1051
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1051
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUpdatemode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 855
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 856
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 857
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 858
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 859
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 864
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 864
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1005
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1006
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1007
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1008
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1009
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUsername()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1014
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-object v2

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1014
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 2
    .param p1, "isfirst"    # Ljava/lang/String;

    .prologue
    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 285
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 296
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 289
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 290
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsFirstTimeEnter(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .param p1, "isbind"    # Ljava/lang/String;

    .prologue
    .line 601
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 602
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 613
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 606
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 607
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShortbind(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)V
    .locals 2
    .param p1, "isxiu"    # Ljava/lang/String;

    .prologue
    .line 637
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 638
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    .line 640
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 649
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 642
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 643
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setWoyaoxiu(Ljava/lang/String;)V

    .line 644
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "signname"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 147
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 160
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 152
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 153
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, p2}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAfterCalling(Ljava/lang/String;)V
    .locals 2
    .param p1, "afterCalling"    # Ljava/lang/String;

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 323
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 334
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 327
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 328
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setAfterCalling(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setContactui(Ljava/lang/String;)V
    .locals 2
    .param p1, "contactui"    # Ljava/lang/String;

    .prologue
    .line 360
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 361
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 372
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 365
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 366
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setContactui(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultSystemContentID(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultSystemContentID"    # Ljava/lang/String;

    .prologue
    .line 1247
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1248
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1250
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    .line 1251
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1261
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1253
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1255
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemContentID(Ljava/lang/String;)V

    .line 1256
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultSystemUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultSystemUrl"    # Ljava/lang/String;

    .prologue
    .line 1210
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1211
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1212
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    .line 1213
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1222
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1215
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1216
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultSystemUrl(Ljava/lang/String;)V

    .line 1217
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1219
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultUrl"    # Ljava/lang/String;

    .prologue
    .line 1286
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1287
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1288
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1298
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1291
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1292
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDefaultUrl(Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDiyPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "diyPath"    # Ljava/lang/String;

    .prologue
    .line 1173
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1174
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1175
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    .line 1176
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1185
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1178
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1179
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setDiyPath(Ljava/lang/String;)V

    .line 1180
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1182
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGalleryguide(Ljava/lang/String;)V
    .locals 2
    .param p1, "galleryguide"    # Ljava/lang/String;

    .prologue
    .line 468
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 469
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 480
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 473
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 474
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGalleryguide(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGuidemask(Ljava/lang/String;)V
    .locals 2
    .param p1, "guidemask"    # Ljava/lang/String;

    .prologue
    .line 948
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 949
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 950
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    .line 951
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 960
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 953
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 954
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setGuidemask(Ljava/lang/String;)V

    .line 955
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "isMatch"    # Ljava/lang/String;

    .prologue
    .line 836
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 837
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 838
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    .line 839
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 848
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 841
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 842
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsMatch(Ljava/lang/String;)V

    .line 843
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsUpdateContact(Ljava/lang/String;)V
    .locals 2
    .param p1, "isUpdateContact"    # Ljava/lang/String;

    .prologue
    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 507
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 518
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 511
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 512
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setIsUpdateContact(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLoginmode(Ljava/lang/String;)V
    .locals 2
    .param p1, "loginmode"    # Ljava/lang/String;

    .prologue
    .line 910
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 911
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 912
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 913
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 922
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 915
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 916
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setLoginmode(Ljava/lang/String;)V

    .line 917
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 919
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMember(Ljava/lang/String;)V
    .locals 2
    .param p1, "member"    # Ljava/lang/String;

    .prologue
    .line 1098
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1099
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1100
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    .line 1101
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1110
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1103
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1104
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMember(Ljava/lang/String;)V

    .line 1105
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1107
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 724
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 725
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 736
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 729
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 730
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setMode(Ljava/lang/String;)V

    .line 731
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 798
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 799
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 800
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 801
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 810
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 803
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 804
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPassword(Ljava/lang/String;)V

    .line 805
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPhone_num(Ljava/lang/String;)V
    .locals 2
    .param p1, "phone_num"    # Ljava/lang/String;

    .prologue
    .line 761
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 762
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 764
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 773
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 766
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 767
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setPhone_num(Ljava/lang/String;)V

    .line 768
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSavelogin(Ljava/lang/String;)V
    .locals 2
    .param p1, "savelogin"    # Ljava/lang/String;

    .prologue
    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 399
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 410
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 403
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 404
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSavelogin(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSendcaiman(Ljava/lang/String;)V
    .locals 2
    .param p1, "issend"    # Ljava/lang/String;

    .prologue
    .line 673
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 674
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    .line 676
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 685
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 678
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 679
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSendcaiman(Ljava/lang/String;)V

    .line 680
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 1323
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1324
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1325
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setServerAddress(Ljava/lang/String;)V

    .line 1326
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1335
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1328
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1329
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setServerAddress(Ljava/lang/String;)V

    .line 1330
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1332
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowRing(Ljava/lang/String;)V
    .locals 2
    .param p1, "showRing"    # Ljava/lang/String;

    .prologue
    .line 544
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 545
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 556
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
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowRing(Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowstyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "showstyle"    # Ljava/lang/String;

    .prologue
    .line 986
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 987
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 988
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    .line 989
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 998
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 991
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 992
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setShowstyle(Ljava/lang/String;)V

    .line 993
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSignname(Ljava/lang/String;)V
    .locals 2
    .param p1, "signname"    # Ljava/lang/String;

    .prologue
    .line 1060
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1061
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1062
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 1063
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1072
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1065
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1066
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setSignname(Ljava/lang/String;)V

    .line 1067
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1069
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextTrim(Ljava/lang/String;)V
    .locals 2
    .param p1, "textTrim"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 124
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 135
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 128
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 129
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTextTrim(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTrimMember(Ljava/lang/String;)V
    .locals 2
    .param p1, "trimMember"    # Ljava/lang/String;

    .prologue
    .line 1136
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1137
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1138
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    .line 1139
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1148
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1141
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1142
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTrimMember(Ljava/lang/String;)V

    .line 1143
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1145
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTryLuck(Ljava/lang/String;)V
    .locals 2
    .param p1, "tryluck"    # Ljava/lang/String;

    .prologue
    .line 582
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 583
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 584
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 594
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
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setTryLuck(Ljava/lang/String;)V

    .line 589
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUpdatemode(Ljava/lang/String;)V
    .locals 2
    .param p1, "updatemode"    # Ljava/lang/String;

    .prologue
    .line 873
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 874
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 875
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    .line 876
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 885
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 878
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 879
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUpdatemode(Ljava/lang/String;)V

    .line 880
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1023
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 1024
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 1025
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 1026
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->a(Lcom/cmdm/control/bean/CaiXiangSetting;)I

    .line 1035
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return-void

    .line 1028
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :cond_0
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangSetting;

    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    .line 1029
    .restart local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangSetting;->setUsername(Ljava/lang/String;)V

    .line 1030
    invoke-direct {p0, v1}, Lcom/cmdm/control/logic/b;->b(Lcom/cmdm/control/bean/CaiXiangSetting;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1032
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public y()Lcom/cmdm/control/bean/CaiXiangSetting;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;

    iget-object v4, p0, Lcom/cmdm/control/logic/b;->ca:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;-><init>(Landroid/content/Context;)V

    .line 40
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSettingStrategy;
    new-instance v0, Lcom/cmdm/control/database/SettingDBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/SettingDBContext;-><init>(Lcom/cmdm/control/database/ISettingDBStrategy;)V

    .line 43
    .local v0, "dbContext":Lcom/cmdm/control/database/SettingDBContext;, "Lcom/cmdm/control/database/SettingDBContext<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    invoke-virtual {v0, v3, v3}, Lcom/cmdm/control/database/SettingDBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    .local v1, "mCaiXiangSetting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangSetting;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 47
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/CaiXiangSetting;

    .line 50
    :cond_0
    return-object v3
.end method

.method public z()Z
    .locals 4

    .prologue
    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v1

    .line 270
    .local v1, "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CaiXiangSetting;->getIsFirstTimeEnter()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const/4 v2, 0x0

    .line 279
    .end local v1    # "mCaiXiangSetting":Lcom/cmdm/control/bean/CaiXiangSetting;
    :goto_0
    return v2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
