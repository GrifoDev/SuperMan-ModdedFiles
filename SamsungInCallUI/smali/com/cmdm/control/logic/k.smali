.class public Lcom/cmdm/control/logic/k;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = null

.field static final cm:Ljava/lang/String; = "com.cmdm.polychrome.ui"

.field private static cn:Lcom/cmdm/control/util/file/FileReadWrite;


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field private ci:Lcom/cmdm/control/dao/i;

.field cj:Lcom/cmdm/control/bean/CaiXiangSetting;

.field ck:Ljava/lang/String;

.field cl:Ljava/lang/String;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CaiYinSDK"

    sput-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-direct {v0}, Lcom/cmdm/control/util/file/FileReadWrite;-><init>()V

    sput-object v0, Lcom/cmdm/control/logic/k;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    new-instance v0, Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/cmdm/control/logic/k;->bY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v0, "com.cmdm.polychrome.ui"

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/dao/i;->aS()Lcom/cmdm/control/dao/i;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    new-instance v0, Lcom/cmdm/control/logic/b;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getUpdatemode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/logic/k;->bY:I

    :cond_0
    return-void
.end method

.method static synthetic bC()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v1, Lcom/cmdm/control/logic/k;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    invoke-virtual {v1, p1, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->writeFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/cmdm/control/exception/a;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x5

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v2, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v7

    move v1, v9

    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/control/logic/b;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const-string v4, "1"

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, 0x6

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v3, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v7

    move v1, v9

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x14

    const-string v2, "\u767b\u5f55\u6a21\u5f0f\u4e0d\u5bf9"

    invoke-direct {v7, v0, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x15

    const-string v2, "\u624b\u673a\u53f7\u6216\u5bc6\u7801\u4e3a\u7a7a"

    invoke-direct {v7, v0, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v7

    goto :goto_1
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 8

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v4, "1"

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/control/logic/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    const-string v4, "1"

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x17

    const-string v2, "\u5ba2\u6237\u7aefid\u4e3a\u7a7a\u6216\u8005\u5ba2\u6237\u7aef\u7684key\u4e3a\u7a7a\u6216\u8005\u7528\u6237\u624b\u673a\u53f7\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v7

    goto :goto_0
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v3, "1"

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_1
    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/control/logic/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const-string v4, "1"

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    move-object v0, v7

    goto :goto_0
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MediaResult;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/cmdm/control/dao/i;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "tokenMsisdn():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token success"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/cmdm/control/bean/UserTokenInfo;

    move-object v4, v0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/UserTokenInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/UserTokenInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/UserTokenInfo;->getAcessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/UserTokenInfo;->getAcessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tokenMsisdn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token success\uff0csave info"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cmdm/control/logic/b;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v4}, Lcom/cmdm/control/bean/UserTokenInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/cmdm/control/bean/UserTokenInfo;->getAcessToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v2, 0x1

    const-string v3, "\u589e\u5f3a\u5c4f\u663e\u9274\u6743\u6210\u529f"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "tokenMsisdn():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token success\uff0csave info two"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tokenMsisdn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token\u8ba4\u8bc1\u6210\u529f\uff0c\u83b7\u53d6\u76f8\u5e94\u4fe1\u606f\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v2, 0x0

    const-string v3, "\u589e\u5f3a\u5c4f\u663e\u9274\u6743\u5931\u8d25,\u9274\u6743\u4e4b\u540e\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u5931\u8d25"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "tokenMsisdn():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "token fail\uff0cunkonw "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u589e\u5f3a\u5c4f\u663e\u9274\u6743\u5931\u8d25,\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tokenMsisdn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token fail\uff0cunkonw"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v2, 0x0

    const-string v3, "\u589e\u5f3a\u5c4f\u663e\u9274\u6743\u5931\u8d25,\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v2, 0x12

    const-string v3, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v0, "missdn=? and cid=? and greeting=? and show_method=? and uid=?"

    const-string v2, ""

    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    const-string v4, "1"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 8

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v4, "1"

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasActivitionAppNum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/control/logic/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    const-string v4, "1"

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/GetUserParaInfoResult;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/GetUserParaInfoResult;->loadFzProvince()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->saveHasFZSF(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/cmdm/control/bean/GetUserParaInfoResult;->isOpenTxt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->saveTextTrim(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/cmdm/control/bean/GetUserParaInfoResult;->isTxtProvince:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->saveTryText(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/GetUserParaInfoResult;->loadTextMode()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->setTextSwitch(Landroid/content/Context;Z)V

    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v2, 0x1

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "\u767b\u5f55\u6210\u529f"

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v2, 0x0

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v2, v0}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v0, "\u767b\u5f55\u5931\u8d25"

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x17

    const-string v2, "\u5ba2\u6237\u7aefid\u4e3a\u7a7a\u6216\u8005\u5ba2\u6237\u7aef\u7684key\u4e3a\u7a7a\u6216\u8005\u7528\u6237\u624b\u673a\u53f7\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public R(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v3, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/i;->g(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x16

    const-string v2, "\u5ba2\u6237\u7aefid\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MsisdnInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0
.end method

.method public T(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BaseInfoResult;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v9

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v9}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public U(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserStatus;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    const-string v2, ""

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x13

    const-string v2, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public V(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateMode=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u672a\u77e5\u53f7\u7801"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->h(Landroid/content/Context;)Lcom/cmdm/control/network/b;

    move-result-object v0

    sget-object v1, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/network/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cmdm/control/logic/k;->aH(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CRSInfo;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cmdm/control/logic/k$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/cmdm/control/logic/k$2;-><init>(Lcom/cmdm/control/logic/k;Lcom/cmdm/control/bean/CRSInfo;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/cmdm/control/logic/k;->bA()V

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u53f7\u7801\u6216\u5207\u6362\u7f51\u7edc\u7c7b\u578b"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public W(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 3

    new-instance v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    invoke-virtual {p0, p1}, Lcom/cmdm/control/logic/k;->aa(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/k;->ax()Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    goto :goto_0
.end method

.method public X(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiYinShowingObject;
    .locals 6

    new-instance v1, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiYinShowingObject;-><init>()V

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " uid=? and missdn=? and settingStartTime <= ? and settingEndTime >= ? and ((settingWeek like \'%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentWeekOfDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\' and dateType=?) or "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(settingStartDate<=? and settingEndDate>=? and dateType=?) )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v5}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentDate()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentDate()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "1"

    aput-object v5, v3, v4

    const-string v4, " priority desc "

    invoke-virtual {v2, v0, v3, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCaiYinShowingListObject.size()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CaiYinShowingObject;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 3

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u672a\u77e5\u53f7\u7801"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ck:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->h(Landroid/content/Context;)Lcom/cmdm/control/network/b;

    move-result-object v0

    sget-object v1, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/network/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x1

    const-string v2, "\u6b63\u5728\u66f4\u65b0\u589e\u5f3a\u5c4f\u663e\u4e2d..."

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cmdm/control/logic/k$3;

    invoke-direct {v2, p0, p1}, Lcom/cmdm/control/logic/k$3;-><init>(Lcom/cmdm/control/logic/k;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    invoke-virtual {p0}, Lcom/cmdm/control/logic/k;->bA()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u65b0\u66f4\u65b0!"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public Z(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmdm/control/logic/k$5;

    invoke-direct {v1, p0, p1}, Lcom/cmdm/control/logic/k$5;-><init>(Lcom/cmdm/control/logic/k;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Lcom/cmdm/control/bean/CRSInfo;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/ContentType;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getGreeting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/cmdm/control/logic/k;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/cmdm/control/logic/k;->delete(Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    new-instance v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ContentType;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getGreeting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGreeting(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CRSInfo;->getContent()Lcom/cmdm/control/bean/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ContentType;->getPosterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6302\u65ad\u540e\u65b0\u589e\u4e00\u6761\u8bbe\u7f6e\u4fe1\u606furl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmdm/control/util/PrintLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v1, "1065843199"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "01#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getCurrentUTC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "SMS_SEND_ACTIOIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u77ed\u4fe1\u767b\u5f55\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aF(Ljava/lang/String;)V
    .locals 3

    const-string v0, "packageName"

    invoke-direct {p0, v0, p1}, Lcom/cmdm/control/logic/k;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u6210\u529f\u5f00\u59cb\u521d\u59cb\u5316\u5305\u540d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aG(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, " missdn=? and uid=?"

    invoke-virtual {v1, v2, v0}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v1, "\u5206\u65f6\u6bb5\u6302\u65ad\u540e\u5220\u9664\u65e7\u7684\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v1, "\u5206\u65f6\u6bb5\u6302\u65ad\u540e\u6570\u636e\u5e93\u4e2d\u6ca1\u6709\u8bbe\u7f6e\u4fe1\u606f\u6216\u5220\u9664\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public aH(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v9

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v9}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public aI(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DisplayResult;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/i;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v9

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v9}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public aa(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 7

    new-instance v1, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v0, " autoid desc"

    const-string v3, "missdn=? and show_method=? and uid=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4, v0}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v5, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v5, v3, v4, v0}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v5}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    new-instance v4, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v5, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v5, v3, v2, v0}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public as()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/cmdm/control/logic/k;->cn:Lcom/cmdm/control/util/file/FileReadWrite;

    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Lcom/cmdm/control/util/file/FileReadWrite;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "com.cmdm.polychrome.ui"

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public at()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/control/logic/b;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, ""

    const-string v4, "0"

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x1

    const-string v2, "\u6ce8\u9500\u6210\u529f"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x0

    const-string v2, "\u6ce8\u9500\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public au()Z
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aw()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/RegionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v3, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/i;->f(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public ax()Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 7

    new-instance v1, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const-string v0, " show_method=? and uid=?"

    const-string v3, " autoid desc"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "3"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "4"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadSystemDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method bA()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/cmdm/control/download/b;

    invoke-direct {v0}, Lcom/cmdm/control/download/b;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cmdm/control/logic/k$4;

    invoke-direct {v2, p0, v0}, Lcom/cmdm/control/logic/k$4;-><init>(Lcom/cmdm/control/logic/k;Lcom/cmdm/control/download/b;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bB()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CommercialTrialProvinceResult;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/i;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bz()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DefaultCRSInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v3, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/cmdm/control/dao/i;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

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

.method public delete(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v1, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-static {v3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, " missdn=? and show_method=? and uid=?"

    invoke-virtual {v1, v2, v0}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v1, "\u6302\u65ad\u540e\u5220\u9664\u65e7\u7684\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v1, "\u6302\u65ad\u540e\u6570\u636e\u5e93\u4e2d\u6ca1\u6709\u8bbe\u7f6e\u4fe1\u606f\u6216\u5220\u9664\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-static {p1}, Lcom/cmdm/control/util/BitmapUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_7

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/cmdm/control/logic/k;->S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/cmdm/control/bean/MsisdnInfo;

    move-object v5, v0

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/logic/b;

    invoke-direct {v2, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    iget-object v4, v5, Lcom/cmdm/control/bean/MsisdnInfo;->msisdn:Ljava/lang/String;

    iget-object v5, v5, Lcom/cmdm/control/bean/MsisdnInfo;->acessToken:Ljava/lang/String;

    const-string v6, "1"

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    const-string v4, "\u767b\u5f55\u6210\u529f"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/cmdm/control/logic/k;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-wide/16 v4, 0x1388

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/logic/k;->S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/cmdm/control/bean/MsisdnInfo;

    move-object v5, v0

    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->cl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/logic/b;

    invoke-direct {v2, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    iget-object v4, v5, Lcom/cmdm/control/bean/MsisdnInfo;->msisdn:Ljava/lang/String;

    iget-object v5, v5, Lcom/cmdm/control/bean/MsisdnInfo;->acessToken:Ljava/lang/String;

    const-string v6, "1"

    iget-object v7, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/cmdm/control/logic/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    const-string v4, "\u767b\u5f55\u6210\u529f"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v2, v9

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-wide/16 v10, 0x19

    cmp-long v5, v6, v10

    if-gez v5, :cond_2

    const-wide/16 v4, 0x1388

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_3
    move-exception v4

    :try_start_5
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    const-string v4, "\u767b\u5f55\u5931\u8d25"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_7
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v3, "\u767b\u5f55\u5931\u8d25,\u6ca1\u6709SIM\u5361"

    invoke-direct {v2, v4, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public init(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/app/a;->a(Landroid/content/Context;)Lcom/cmdm/control/app/a;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->saveAppType(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmdm/control/logic/k$1;

    invoke-direct {v1, p0}, Lcom/cmdm/control/logic/k$1;-><init>(Lcom/cmdm/control/logic/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->setVersion(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x1

    const-string v2, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x0

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public j()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SoftwarePackage;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/logic/k;->ci:Lcom/cmdm/control/dao/i;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->bX:Ljava/lang/String;

    iget v2, p0, Lcom/cmdm/control/logic/k;->bY:I

    iget-object v3, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cmdm/control/logic/k;->clientid:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmdm/control/logic/k;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/dao/i;->a(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v0, v1, v2, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public r(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BuddySettingsCRS;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;

    iget-object v1, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmdm/control/database/Impl/CaiXiangShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v3, Lcom/cmdm/control/download/b;

    invoke-direct {v3}, Lcom/cmdm/control/download/b;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getBuddyMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getGreeting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/cmdm/control/logic/k;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getBuddyMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/logic/k;->delete(Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v3}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getContentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getGreeting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGreeting(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getSetDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setSetDate(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CRSProfile;->getExpire()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGuoQiDate(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getBuddyMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BuddySettingsCRS;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BuddySettingsCRS;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v3, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmdm/control/logic/k;->bW:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65b0\u589e\u4e00\u6761\u8bbe\u7f6e\u4fe1\u606f"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public w(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiYinShowingObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;

    iget-object v2, p0, Lcom/cmdm/control/logic/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/Impl/CaiYinShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v0}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-virtual {v2, v0}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v2, "\u5206\u65f6\u6bb5\u6302\u65ad\u540e\u65b0\u589e\u7684\u6210\u529f"

    invoke-static {v0, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cmdm/control/logic/k;->TAG:Ljava/lang/String;

    const-string v2, "\u5206\u65f6\u6bb5\u6302\u65ad\u65b0\u589e\u5931\u8d25"

    invoke-static {v0, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
