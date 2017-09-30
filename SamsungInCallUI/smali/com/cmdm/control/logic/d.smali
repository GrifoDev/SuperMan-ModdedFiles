.class public Lcom/cmdm/control/logic/d;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private cc:Lcom/cmdm/control/dao/a;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field isLocal:Z

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CaiYinSDK"

    sput-object v0, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/cmdm/control/logic/d;->bY:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/dao/a;->aK()Lcom/cmdm/control/dao/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    new-instance v0, Lcom/cmdm/control/logic/b;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/logic/d;->bY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public U()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/dao/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public V()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/dao/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public W()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/dao/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public X()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x2710

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    const-string v2, "\u66f4\u65b0\u6210\u529f"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRSList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRSList;->getBuddySettingsCRSList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRSList;->getBuddySettingsCRSList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u66f4\u65b0\u6210\u529f,\u66f4\u65b0\u6761\u6570\u4e3a:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRSList;->getBuddySettingsCRSList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cmdm/control/biz/m;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRSList;->getBuddySettingsCRSList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/biz/m;->r(Ljava/util/ArrayList;)V

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x1

    const-string v2, "\u66f4\u65b0\u6210\u529f"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    const-string v2, "\u66f4\u65b0\u6210\u529f"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x0

    const-string v2, "\u66f4\u65b0\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v1, Lcom/cmdm/control/logic/d;->TAG:Ljava/lang/String;

    const-string v2, "\u66f4\u65b0\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_4
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u767b\u5f55\u4e4b\u540e\u7ee7\u7eed\u64cd\u4f5c"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v10

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public Y()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsGroupUserResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v3, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Z()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/HarassMobilesFileResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v3, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const-string v4, "2"

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v7, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u672a\u5feb\u901f\u767b\u5f55"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyPaidsCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    sget-object v5, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    return-void
.end method

.method public b(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyPaidsCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    sget-object v5, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DIYContentResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BuyContentResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyDIYCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move v3, p1

    move v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public e(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyFavoriteCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    sget-object v5, Lcom/cmdm/control/util/client/Setting;->picture:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public f(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const-string v3, "paids"

    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public f(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyFavoriteCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    sget-object v5, Lcom/cmdm/control/util/client/Setting;->video:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    const-string v4, "0"

    const-string v5, "10000"

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public g(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const-string v3, "paids"

    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    const-string v4, "0"

    const-string v5, "10000"

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v0 .. v13}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyDiyVideoList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u672a\u5feb\u901f\u767b\u5f55"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public h(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    const-string v2, "2"

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object/from16 v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u672a\u5feb\u901f\u767b\u5f55"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const-string v3, "diy"

    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public j(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public k(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public l(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public m(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public n(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const-string v3, "diy"

    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRS;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    const-string v1, "10000"

    invoke-virtual {p0, v0, v1}, Lcom/cmdm/control/logic/d;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    invoke-virtual {v1, v0, p1}, Lcom/cmdm/control/dao/a;->a(Lcom/cmdm/control/util/client/ResultUtil;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x10

    const-string v2, "\u67e5\u8be2\u5e38\u7528\u8054\u7cfb\u4eba\u8bbe\u7f6e\u4fe1\u606f\uff0c\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "0"

    const-string v1, "10000"

    invoke-virtual {p0, v0, v1}, Lcom/cmdm/control/logic/d;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    invoke-virtual {v1, v0}, Lcom/cmdm/control/dao/a;->a(Lcom/cmdm/control/util/client/ResultUtil;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/cmdm/control/dao/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public o(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    const-string v3, "favorite"

    invoke-static {p1}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    const-string v2, "2"

    const-string v3, "1"

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/cmdm/control/dao/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    const-string v2, "2"

    const-string v3, "3"

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v8, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v11, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/cmdm/control/logic/d;->isLocal:Z

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x8

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/cmdm/control/dao/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/d;->cc:Lcom/cmdm/control/dao/a;

    iget-object v1, p0, Lcom/cmdm/control/logic/d;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/d;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/d;->bX:Ljava/lang/String;

    iget v6, p0, Lcom/cmdm/control/logic/d;->bY:I

    iget-object v7, p0, Lcom/cmdm/control/logic/d;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmdm/control/logic/d;->clientid:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmdm/control/logic/d;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
