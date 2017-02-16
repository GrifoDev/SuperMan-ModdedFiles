.class public Lcom/cmdm/rcs/logic/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "RichScrnPersonBiz"

.field static eQ:Ljava/lang/String;

.field static eR:Ljava/lang/String;

.field static eS:Ljava/lang/String;


# instance fields
.field eP:Lcom/cmdm/control/biz/e;

.field mContext:Landroid/content/Context;

.field mode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "ssoLoginToken"

    sput-object v0, Lcom/cmdm/rcs/logic/a;->eQ:Ljava/lang/String;

    .line 53
    const-string v0, "ssoLoginSourceId"

    sput-object v0, Lcom/cmdm/rcs/logic/a;->eR:Ljava/lang/String;

    .line 58
    const-string v0, "collectInfo"

    sput-object v0, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/rcs/logic/a;->eP:Lcom/cmdm/control/biz/e;

    .line 46
    const-string v1, "3"

    iput-object v1, p0, Lcom/cmdm/rcs/logic/a;->mode:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    .line 66
    new-instance v1, Lcom/cmdm/control/biz/e;

    invoke-direct {v1, p1}, Lcom/cmdm/control/biz/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cmdm/rcs/logic/a;->eP:Lcom/cmdm/control/biz/e;

    .line 67
    iget-object v1, p0, Lcom/cmdm/rcs/logic/a;->eP:Lcom/cmdm/control/biz/e;

    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cmdm/control/biz/e;->setServerAddress(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/cmdm/control/biz/m;

    invoke-direct {v0, p1}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cmdm/control/biz/m;->init(I)Lcom/cmdm/control/util/client/ResultEntity;

    .line 70
    return-void
.end method


# virtual methods
.method public ClearRichScrnLocalCache(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 6
    .param p1, "PhoneEvent"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v2, 0x0

    .line 228
    .local v2, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmdm/control/database/DBHelper;->getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/DBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/database/DBHelper;->clearDBHelper()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 229
    .local v1, "isclear":Ljava/lang/Boolean;
    const-string v3, "RichScrnPersonBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6e05\u9664\u7f13\u5b58\uff1acaixiang_setting.db\u72b6\u6001"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmdm/control/database/SettingDBHelper;->getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/SettingDBHelper;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Lcom/cmdm/control/database/SettingDBHelper;->clearSettingDBHelper()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 233
    const-string v3, "RichScrnPersonBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6e05\u9664\u7f13\u5b58\uff1acaixiang.db\u72b6\u6001"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmdm/control/util/DataCleanManager;->cleanSharedPreference(Landroid/content/Context;)V

    .line 235
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmdm/control/util/file/FileManager;->cleanDirectory(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 236
    const-string v3, "RichScrnPersonBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6e05\u9664\u7f13\u5b58\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u72b6\u6001"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 237
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {v3}, Lcom/cmdm/control/util/file/FileManager;->cleanDirectory(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 240
    const-string v3, "RichScrnPersonBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6e05\u9664\u7f13\u5b58\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u72b6\u6001"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 241
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->eP:Lcom/cmdm/control/biz/e;

    iget-object v4, p0, Lcom/cmdm/rcs/logic/a;->mode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cmdm/control/biz/e;->setServerAddress(Ljava/lang/String;)V

    .line 243
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    const-string v4, "\u6e05\u9664\u7f13\u5b58\u6210\u529f!"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "isclear":Ljava/lang/Boolean;
    .restart local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v2

    .line 244
    .end local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    const-string v4, "\u6e05\u9664\u7f13\u5b58\u5931\u8d25!"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 7
    .param p1, "sourceType"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 344
    const/4 v3, 0x0

    .line 346
    .local v3, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    iget-object v4, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 347
    new-instance v2, Lcom/cmdm/control/biz/i;

    .line 348
    iget-object v4, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    .line 347
    invoke-direct {v2, v4}, Lcom/cmdm/control/biz/i;-><init>(Landroid/content/Context;)V

    .line 349
    .local v2, "mCaiYinDetailInfoBiz":Lcom/cmdm/control/biz/i;
    if-eqz p1, :cond_1

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 350
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    :cond_0
    if-eqz p2, :cond_1

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 353
    const-string v4, "0.0"

    .line 352
    invoke-virtual {v2, p2, v4}, Lcom/cmdm/control/biz/i;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v3

    .line 399
    .end local v2    # "mCaiYinDetailInfoBiz":Lcom/cmdm/control/biz/i;
    :goto_0
    return-object v3

    .line 354
    .restart local v2    # "mCaiYinDetailInfoBiz":Lcom/cmdm/control/biz/i;
    :cond_1
    if-eqz p1, :cond_2

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 355
    const-string v4, "2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    .line 356
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 358
    const-string v4, "0.0"

    .line 357
    invoke-virtual {v2, p2, v4}, Lcom/cmdm/control/biz/i;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v3

    goto :goto_0

    .line 359
    :cond_2
    if-eqz p1, :cond_3

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 360
    if-eqz p2, :cond_3

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 361
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    .line 362
    const-string v5, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u5931\u8d25,\u8be5\u589e\u5f3a\u5c4f\u663e\u8d44\u6e90\u7c7b\u578b\u4e0d\u5b58\u5728!"

    .line 361
    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 364
    :cond_3
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    .line 365
    const-string v5, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u5931\u8d25,\u8be5\u589e\u5f3a\u5c4f\u663e\u8d44\u6e90\u7c7b\u578b\u6216ID\u4e0d\u80fd\u4e3a\u7a7a!"

    .line 364
    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 368
    .end local v2    # "mCaiYinDetailInfoBiz":Lcom/cmdm/control/biz/i;
    :cond_4
    if-eqz p1, :cond_7

    .line 369
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 370
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 371
    const-string v4, "2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    if-eqz p2, :cond_7

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_7

    .line 374
    :try_start_1
    sget-object v4, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "collect":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 376
    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_1
    sget-object v4, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    .end local v0    # "collect":Ljava/lang/String;
    :goto_2
    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    .line 386
    const-string v5, "\u6b63\u5728\u8bbf\u95ee\u5f69\u5370\u4e1a\u52a1\u5e73\u53f0,\u6536\u85cf\u8bf7\u6c42\u5df2\u53d7\u7406,\u53d7\u7406\u60c5\u51b5\u8bf7\u8fdb\u5165\u589e\u5f3a\u5c4f\u663e\u67e5\u770b!"

    .line 385
    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_0

    .line 379
    .restart local v0    # "collect":Ljava/lang/String;
    :cond_6
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_1

    .line 387
    .end local v0    # "collect":Ljava/lang/String;
    :cond_7
    if-eqz p1, :cond_8

    :try_start_4
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 388
    if-eqz p2, :cond_8

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 389
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    .line 390
    const-string v5, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u5931\u8d25,\u8be5\u589e\u5f3a\u5c4f\u663e\u8d44\u6e90\u7c7b\u578b\u4e0d\u5b58\u5728!"

    .line 389
    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_0

    .line 392
    :cond_8
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    .line 393
    const-string v5, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u5931\u8d25,\u8be5\u589e\u5f3a\u5c4f\u663e\u8d44\u6e90\u7c7b\u578b\u6216ID\u4e0d\u80fd\u4e3a\u7a7a!"

    .line 392
    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_0

    .line 396
    .end local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v4, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u8fc7\u7a0b\u5f02\u5e38!"

    invoke-direct {v3, v6, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v3    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_0

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public DownloadHomeLocRules(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11
    .param p1, "PhoneEvent"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 258
    const/4 v4, 0x0

    .line 260
    .local v4, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    iget-object v8, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 261
    new-instance v1, Lcom/cmdm/control/biz/m;

    iget-object v8, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    .line 263
    .local v1, "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    invoke-virtual {v1}, Lcom/cmdm/control/biz/m;->aw()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v3

    .line 264
    .local v3, "mRegionResult":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 265
    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/RegionInfo;

    .line 266
    .local v2, "mRegionInfo":Lcom/cmdm/control/bean/RegionInfo;
    if-eqz v2, :cond_3

    .line 268
    iget-object v8, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 270
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "ruleversion"

    const-string v9, "1.0.0"

    .line 269
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 272
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 273
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x1

    .line 274
    const-string v9, "\u6b63\u5728\u8bbf\u95ee\u5f69\u5370\u4e1a\u52a1\u5e73\u53f0\uff0c\u5f00\u59cb\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730!"

    .line 273
    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v5, "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v4, v5

    .line 308
    .end local v1    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    .end local v2    # "mRegionInfo":Lcom/cmdm/control/bean/RegionInfo;
    .end local v3    # "mRegionResult":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    .end local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v6    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v7    # "version":Ljava/lang/String;
    .restart local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v4

    .line 276
    .restart local v1    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    .restart local v2    # "mRegionInfo":Lcom/cmdm/control/bean/RegionInfo;
    .restart local v3    # "mRegionResult":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    .restart local v6    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 277
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 278
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 279
    const-string v9, "ruleversion"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 280
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    :cond_1
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 283
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 284
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x1

    .line 285
    const-string v9, "\u6b63\u5728\u8bbf\u95ee\u5f69\u5370\u4e1a\u52a1\u5e73\u53f0\uff0c\u5f00\u59cb\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730!"

    .line 284
    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_1
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 287
    invoke-virtual {v1, v8}, Lcom/cmdm/control/biz/m;->Z(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .end local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 290
    :cond_2
    :try_start_2
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x0

    .line 291
    const-string v9, "\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e\u5931\u8d25,\u7531\u4e8e\u5f52\u5c5e\u5730\u6570\u636e\u8fde\u63a5\u4e0d\u5b58\u5728!"

    .line 290
    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v4, v5

    .end local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 295
    .end local v6    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v7    # "version":Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x1

    .line 296
    const-string v9, "\u6b63\u5728\u8bbf\u95ee\u5f69\u5370\u4e1a\u52a1\u5e73\u53f0\uff0c\u5f00\u59cb\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730!"

    .line 295
    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v4, v5

    .end local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 299
    .end local v2    # "mRegionInfo":Lcom/cmdm/control/bean/RegionInfo;
    :cond_4
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x0

    .line 300
    const-string v9, "\u8bf7\u6c42\u8d85\u65f6\u5f02\u5e38,\u65e0\u6cd5\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e!"

    .line 299
    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v4, v5

    .end local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 303
    .end local v1    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    .end local v3    # "mRegionResult":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    :cond_5
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x0

    const-string v9, "\u5f53\u524d\u6ca1\u6709\u8054\u7f51,\u65e0\u6cd5\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e!"

    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v4, v5

    .end local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const-string v8, "\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e\u8fc7\u7a0b\u5f02\u5e38!"

    invoke-direct {v4, v10, v8}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v1    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    .restart local v2    # "mRegionInfo":Lcom/cmdm/control/bean/RegionInfo;
    .restart local v3    # "mRegionResult":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    .restart local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v6    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v7    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v4    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public DownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 6
    .param p1, "missdn"    # Ljava/lang/String;
    .param p2, "PhoneEvent"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 197
    const/4 v2, 0x0

    .line 199
    .local v2, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    new-instance v1, Lcom/cmdm/control/biz/m;

    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    .line 202
    .local v1, "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/biz/m;->Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v2

    .line 212
    .end local v1    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    :goto_0
    return-object v2

    .line 206
    :cond_0
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    .line 207
    const-string v4, "\u5f53\u524d\u6ca1\u6709\u8054\u7f51,\u65e0\u6cd5\u66f4\u65b0/\u4e0b\u8f7d\u589e\u5f3a\u5c4f\u663e\u3002"

    .line 206
    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 209
    .end local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v3, "\u66f4\u65b0/\u4e0b\u8f7d\u589e\u5f3a\u5c4f\u663e\u5931\u8d25!"

    invoke-direct {v2, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public GetRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .param p1, "missdn"    # Ljava/lang/String;
    .param p2, "PhoneEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/rcs/bean/RichScrnShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v6, 0x0

    .line 143
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/rcs/bean/RichScrnShowingObject;>;"
    :try_start_0
    new-instance v5, Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-direct {v5}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;-><init>()V

    .line 144
    .local v5, "mRichScrnShowingObject":Lcom/cmdm/rcs/bean/RichScrnShowingObject;
    new-instance v4, Lcom/cmdm/control/biz/m;

    iget-object v7, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    .line 148
    .local v4, "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    invoke-virtual {v4, p1}, Lcom/cmdm/control/biz/m;->X(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiYinShowingObject;

    move-result-object v3

    .line 149
    .local v3, "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiYinShowingObject;
    if-eqz v3, :cond_0

    .line 150
    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 152
    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    :cond_0
    const-string v7, "0"

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setSourceType(Ljava/lang/String;)V

    .line 155
    iget-object v7, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getDefaultShowUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setLocalSourceUrl(Ljava/lang/String;)V

    .line 171
    :goto_0
    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getCid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setCid(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getGreeting()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setGreeting(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5, p1}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 176
    iget-object v7, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getNumberType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setMissdnAddress(Ljava/lang/String;)V

    .line 177
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/rcs/bean/RichScrnShowingObject;>;"
    const/4 v7, 0x1

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u67e5\u8be2\u589e\u5f3a\u5c4f\u663e\u6210\u529f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 183
    .end local v3    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiYinShowingObject;
    .end local v4    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    .end local v5    # "mRichScrnShowingObject":Lcom/cmdm/rcs/bean/RichScrnShowingObject;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/rcs/bean/RichScrnShowingObject;>;"
    :goto_1
    return-object v6

    .line 158
    .restart local v3    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiYinShowingObject;
    .restart local v4    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    .restart local v5    # "mRichScrnShowingObject":Lcom/cmdm/rcs/bean/RichScrnShowingObject;
    :cond_1
    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cmdm/control/util/client/Setting;->getLocalHighPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "filename":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 161
    const-string v7, "0"

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setSourceType(Ljava/lang/String;)V

    .line 164
    iget-object v7, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getDefaultShowUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setLocalSourceUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "filename":Ljava/io/File;
    .end local v3    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiYinShowingObject;
    .end local v4    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    .end local v5    # "mRichScrnShowingObject":Lcom/cmdm/rcs/bean/RichScrnShowingObject;
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/rcs/bean/RichScrnShowingObject;>;"
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u67e5\u8be2\u589e\u5f3a\u5c4f\u663e\u5931\u8d25"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 180
    invoke-direct {v6, v7, v8, v9}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/rcs/bean/RichScrnShowingObject;>;"
    goto :goto_1

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "filename":Ljava/io/File;
    .restart local v3    # "mCaiXiangShowingObject":Lcom/cmdm/control/bean/CaiYinShowingObject;
    .restart local v4    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    .restart local v5    # "mRichScrnShowingObject":Lcom/cmdm/rcs/bean/RichScrnShowingObject;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cmdm/control/util/client/Setting;->getSourceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setSourceType(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v5, v1}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setLocalSourceUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public RichScrnCMCCSSOLogin(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    new-instance v0, Lcom/cmdm/control/biz/m;

    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/biz/m;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    .line 425
    .end local v0    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    :goto_0
    return-object v1

    .line 418
    :cond_0
    :try_start_0
    sget-object v2, Lcom/cmdm/rcs/logic/a;->eQ:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    sget-object v2, Lcom/cmdm/rcs/logic/a;->eR:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v2, 0x0

    const-string v3, "\u5f53\u524d\u6ca1\u6709\u8054\u7f51,\u9a8c\u8bc1\u7ec8\u7aef\u7528\u6237\u4fe1\u606f\u5df2\u53d7\u7406\u3002"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 420
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public RichScrnChangeNetWork()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 8

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "changeNetWorkResult":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v6, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 456
    :try_start_0
    sget-object v6, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "collect":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 458
    const-string v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 459
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "collectLength":[Ljava/lang/String;
    array-length v6, v2

    div-int/lit8 v4, v6, 0x2

    .line 461
    .local v4, "length":I
    if-lez v4, :cond_0

    .line 462
    const/4 v5, 0x0

    .line 463
    .local v5, "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 468
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 469
    const-string v6, "RichScrnPersonBiz"

    const-string v7, "\u6536\u85cf\u6210\u529f"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_1
    sget-object v6, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v1    # "collect":Ljava/lang/String;
    .end local v2    # "collectLength":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :cond_0
    :goto_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v0    # "changeNetWorkResult":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v6, 0x1

    .line 485
    const-string v7, "\u5207\u6362\u7f51\u7edc\u72b6\u6001\u6210\u529f\u3002"

    .line 484
    invoke-direct {v0, v6, v7}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .line 486
    .restart local v0    # "changeNetWorkResult":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0

    .line 465
    .restart local v1    # "collect":Ljava/lang/String;
    .restart local v2    # "collectLength":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    .restart local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :cond_1
    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x0

    :try_start_1
    aget-object v6, v2, v6

    .line 466
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-object v7, v2, v7

    .line 464
    invoke-virtual {p0, v6, v7}, Lcom/cmdm/rcs/logic/a;->CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v5

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_2
    const-string v6, "RichScrnPersonBiz"

    const-string v7, "\u6536\u85cf\u5931\u8d25"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 477
    .end local v1    # "collect":Ljava/lang/String;
    .end local v2    # "collectLength":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 482
    :cond_3
    const-string v6, "RichScrnPersonBiz"

    const-string v7, "\u5f53\u524d\u65e0\u7f51\u7edc"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public SetOwnerMsisdn(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 6
    .param p1, "OwnerMsisdn"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 322
    .local v2, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    new-instance v1, Lcom/cmdm/control/biz/e;

    .line 323
    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    .line 322
    invoke-direct {v1, v3}, Lcom/cmdm/control/biz/e;-><init>(Landroid/content/Context;)V

    .line 324
    .local v1, "mCaiYinBaseSettingBiz":Lcom/cmdm/control/biz/e;
    invoke-virtual {v1, p1}, Lcom/cmdm/control/biz/e;->setPhone_num(Ljava/lang/String;)V

    .line 325
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    const-string v4, "\u4fdd\u5b58\u672c\u673a\u53f7\u7801\u6210\u529f!"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v1    # "mCaiYinBaseSettingBiz":Lcom/cmdm/control/biz/e;
    .restart local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v2

    .line 326
    .end local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4fdd\u5b58\u672c\u673a\u53f7\u7801\u5931\u8d25"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v2    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public init(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 5
    .param p1, "cacheSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    .line 83
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25,\u521d\u59cb\u5316\u6587\u4ef6\u5927\u5c0f\u4e0d\u80fd\u591f\u5c0f\u4e8e5M"

    invoke-direct {v1, v4, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .line 93
    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_0
    return-object v1

    .line 86
    :cond_0
    :try_start_0
    const-string v2, "DefaultFileSize"

    mul-int/lit16 v3, p1, 0x400

    mul-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v2, 0x1

    const-string v3, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 88
    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lcom/cmdm/control/exception/a;
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v1, v4, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method

.method public n(ILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 4
    .param p1, "login_type"    # I
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    new-instance v0, Lcom/cmdm/control/biz/m;

    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 114
    invoke-virtual {v0, p2, p3}, Lcom/cmdm/control/biz/m;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    .line 121
    .end local v0    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    :goto_0
    return-object v1

    .line 116
    .restart local v0    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const-string v2, "\u767b\u5f55\u5931\u8d25,\u6ca1\u6709\u8be5\u7c7b\u578b\u767b\u5f55\u65b9\u5f0f!"

    invoke-direct {v1, v3, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 119
    .end local v0    # "mCaiYinPhoneBiz":Lcom/cmdm/control/biz/m;
    :cond_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const-string v2, "\u5f53\u524d\u65e0\u7f51\u7edc,\u8bf7\u8054\u7f51\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v1, v3, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0
.end method
