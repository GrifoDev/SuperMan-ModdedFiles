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

    const-string v0, "ssoLoginToken"

    sput-object v0, Lcom/cmdm/rcs/logic/a;->eQ:Ljava/lang/String;

    const-string v0, "ssoLoginSourceId"

    sput-object v0, Lcom/cmdm/rcs/logic/a;->eR:Ljava/lang/String;

    const-string v0, "collectInfo"

    sput-object v0, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/rcs/logic/a;->eP:Lcom/cmdm/control/biz/e;

    const-string v1, "3"

    iput-object v1, p0, Lcom/cmdm/rcs/logic/a;->mode:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/cmdm/control/biz/e;

    invoke-direct {v1, p1}, Lcom/cmdm/control/biz/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cmdm/rcs/logic/a;->eP:Lcom/cmdm/control/biz/e;

    iget-object v1, p0, Lcom/cmdm/rcs/logic/a;->eP:Lcom/cmdm/control/biz/e;

    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cmdm/control/biz/e;->setServerAddress(Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/control/biz/m;

    invoke-direct {v0, p1}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cmdm/control/biz/m;->init(I)Lcom/cmdm/control/util/client/ResultEntity;

    return-void
.end method


# virtual methods
.method public ClearRichScrnLocalCache(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmdm/control/database/DBHelper;->getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/DBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/database/DBHelper;->clearDBHelper()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "RichScrnPersonBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6e05\u9664\u7f13\u5b58\uff1acaixiang_setting.db\u72b6\u6001"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmdm/control/database/SettingDBHelper;->getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/SettingDBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/database/SettingDBHelper;->clearSettingDBHelper()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "RichScrnPersonBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6e05\u9664\u7f13\u5b58\uff1acaixiang.db\u72b6\u6001"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmdm/control/util/DataCleanManager;->cleanSharedPreference(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmdm/control/util/file/FileManager;->cleanDirectory(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

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

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmdm/control/util/file/FileManager;->cleanDirectory(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

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

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->eP:Lcom/cmdm/control/biz/e;

    iget-object v4, p0, Lcom/cmdm/rcs/logic/a;->mode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cmdm/control/biz/e;->setServerAddress(Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    const-string v4, "\u6e05\u9664\u7f13\u5b58\u6210\u529f!"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    const-string v4, "\u6e05\u9664\u7f13\u5b58\u5931\u8d25!"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v2, Lcom/cmdm/control/biz/i;

    iget-object v4, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/cmdm/control/biz/i;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "0.0"

    invoke-virtual {v2, p2, v4}, Lcom/cmdm/control/biz/i;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    if-eqz p1, :cond_2

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0.0"

    invoke-virtual {v2, p2, v4}, Lcom/cmdm/control/biz/i;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    const-string v5, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u5931\u8d25,\u8be5\u589e\u5f3a\u5c4f\u663e\u8d44\u6e90\u7c7b\u578b\u4e0d\u5b58\u5728!"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    const-string v5, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u5931\u8d25,\u8be5\u589e\u5f3a\u5c4f\u663e\u8d44\u6e90\u7c7b\u578b\u6216ID\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_7

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

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

    :try_start_1
    sget-object v4, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

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

    :goto_1
    sget-object v4, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    const-string v5, "\u6b63\u5728\u8bbf\u95ee\u5f69\u5370\u4e1a\u52a1\u5e73\u53f0,\u6536\u85cf\u8bf7\u6c42\u5df2\u53d7\u7406,\u53d7\u7406\u60c5\u51b5\u8bf7\u8fdb\u5165\u589e\u5f3a\u5c4f\u663e\u67e5\u770b!"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

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

    :cond_7
    if-eqz p1, :cond_8

    :try_start_4
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz p2, :cond_8

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    const-string v5, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u5931\u8d25,\u8be5\u589e\u5f3a\u5c4f\u663e\u8d44\u6e90\u7c7b\u578b\u4e0d\u5b58\u5728!"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    const-string v5, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u5931\u8d25,\u8be5\u589e\u5f3a\u5c4f\u663e\u8d44\u6e90\u7c7b\u578b\u6216ID\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v4, "\u6536\u85cf\u589e\u5f3a\u5c4f\u663e\u8fc7\u7a0b\u5f02\u5e38!"

    invoke-direct {v3, v6, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public DownloadHomeLocRules(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    const/4 v10, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v1, Lcom/cmdm/control/biz/m;

    iget-object v8, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/cmdm/control/biz/m;->aw()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/RegionInfo;

    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "ruleversion"

    const-string v9, "1.0.0"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x1

    const-string v9, "\u6b63\u5728\u8bbf\u95ee\u5f69\u5370\u4e1a\u52a1\u5e73\u53f0\uff0c\u5f00\u59cb\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730!"

    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "ruleversion"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x1

    const-string v9, "\u6b63\u5728\u8bbf\u95ee\u5f69\u5370\u4e1a\u52a1\u5e73\u53f0\uff0c\u5f00\u59cb\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730!"

    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lcom/cmdm/control/bean/RegionInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/cmdm/control/biz/m;->Z(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x0

    const-string v9, "\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e\u5931\u8d25,\u7531\u4e8e\u5f52\u5c5e\u5730\u6570\u636e\u8fde\u63a5\u4e0d\u5b58\u5728!"

    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x1

    const-string v9, "\u6b63\u5728\u8bbf\u95ee\u5f69\u5370\u4e1a\u52a1\u5e73\u53f0\uff0c\u5f00\u59cb\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730!"

    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x0

    const-string v9, "\u8bf7\u6c42\u8d85\u65f6\u5f02\u5e38,\u65e0\u6cd5\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e!"

    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    goto :goto_0

    :cond_5
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v8, 0x0

    const-string v9, "\u5f53\u524d\u6ca1\u6709\u8054\u7f51,\u65e0\u6cd5\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e!"

    invoke-direct {v5, v8, v9}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v8, "\u4e0b\u8f7d/\u66f4\u65b0\u5f52\u5c5e\u5730\u6570\u636e\u8fc7\u7a0b\u5f02\u5e38!"

    invoke-direct {v4, v10, v8}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_1
.end method

.method public DownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/cmdm/control/biz/m;

    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/biz/m;->Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    const-string v4, "\u5f53\u524d\u6ca1\u6709\u8054\u7f51,\u65e0\u6cd5\u66f4\u65b0/\u4e0b\u8f7d\u589e\u5f3a\u5c4f\u663e\u3002"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v3, "\u66f4\u65b0/\u4e0b\u8f7d\u589e\u5f3a\u5c4f\u663e\u5931\u8d25!"

    invoke-direct {v2, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public GetRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-direct {v5}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;-><init>()V

    new-instance v4, Lcom/cmdm/control/biz/m;

    iget-object v7, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/cmdm/control/biz/m;->X(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiYinShowingObject;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string v7, "0"

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setSourceType(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getDefaultShowUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setLocalSourceUrl(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getCid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setCid(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getGreeting()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setGreeting(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setMissdn(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getNumberType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setMissdnAddress(Ljava/lang/String;)V

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u67e5\u8be2\u589e\u5f3a\u5c4f\u663e\u6210\u529f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-object v6

    :cond_1
    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cmdm/control/util/client/Setting;->getLocalHighPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "0"

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setSourceType(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/cmdm/control/util/mobile/CallNumberHandleUtils;->getDefaultShowUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setLocalSourceUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

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

    invoke-direct {v6, v7, v8, v9}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/cmdm/control/bean/CaiYinShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cmdm/control/util/client/Setting;->getSourceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setSourceType(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->setLocalSourceUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public RichScrnCMCCSSOLogin(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/cmdm/control/biz/m;

    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/biz/m;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/cmdm/rcs/logic/a;->eQ:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/cmdm/rcs/logic/a;->eR:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v2, 0x0

    const-string v3, "\u5f53\u524d\u6ca1\u6709\u8054\u7f51,\u9a8c\u8bc1\u7ec8\u7aef\u7528\u6237\u4fe1\u606f\u5df2\u53d7\u7406\u3002"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public RichScrnChangeNetWork()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 8

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    sget-object v6, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    invoke-static {v6}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    div-int/lit8 v4, v6, 0x2

    if-lez v4, :cond_0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "RichScrnPersonBiz"

    const-string v7, "\u6536\u85cf\u6210\u529f"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v6, Lcom/cmdm/rcs/logic/a;->eS:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x1

    const-string v7, "\u5207\u6362\u7f51\u7edc\u72b6\u6001\u6210\u529f\u3002"

    invoke-direct {v0, v6, v7}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x0

    :try_start_1
    aget-object v6, v2, v6

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {p0, v6, v7}, Lcom/cmdm/rcs/logic/a;->CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "RichScrnPersonBiz"

    const-string v7, "\u6536\u85cf\u5931\u8d25"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_3
    const-string v6, "RichScrnPersonBiz"

    const-string v7, "\u5f53\u524d\u65e0\u7f51\u7edc"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public SetOwnerMsisdn(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/cmdm/control/biz/e;

    iget-object v3, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cmdm/control/biz/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/cmdm/control/biz/e;->setPhone_num(Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    const-string v4, "\u4fdd\u5b58\u672c\u673a\u53f7\u7801\u6210\u529f!"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4fdd\u5b58\u672c\u673a\u53f7\u7801\u5931\u8d25"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public init(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25,\u521d\u59cb\u5316\u6587\u4ef6\u5927\u5c0f\u4e0d\u80fd\u591f\u5c0f\u4e8e5M"

    invoke-direct {v1, v4, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "DefaultFileSize"

    mul-int/lit16 v3, p1, 0x400

    mul-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v2, 0x1

    const-string v3, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v1, v4, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public n(ILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/cmdm/control/biz/m;

    iget-object v2, p0, Lcom/cmdm/rcs/logic/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cmdm/control/biz/m;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/cmdm/control/biz/m;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v2, "\u767b\u5f55\u5931\u8d25,\u6ca1\u6709\u8be5\u7c7b\u578b\u767b\u5f55\u65b9\u5f0f!"

    invoke-direct {v1, v3, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const-string v2, "\u5f53\u524d\u65e0\u7f51\u7edc,\u8bf7\u8054\u7f51\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v1, v3, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
