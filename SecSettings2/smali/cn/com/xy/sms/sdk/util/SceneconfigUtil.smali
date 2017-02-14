.class public Lcn/com/xy/sms/sdk/util/SceneconfigUtil;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSceneRule(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/SceneRule;
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "hasImportDrawableData"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getBooleanParam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/t;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "titleNo ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "hasImportData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    invoke-static {p0, p1, v2}, Lcn/com/xy/sms/sdk/db/entity/s;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "titleNo ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u60c5\u666f\u4e0d\u5b58\u5728\u3002\u9700\u8981\u83b7\u53d6\u60c5\u666f\u914d\u7f6e\u6570\u636e\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/t;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/t;-><init>()V

    const-string/jumbo v1, "-1"

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;

    iput-object p0, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v2, v0, Lcn/com/xy/sms/sdk/db/entity/t;->d:I

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Lcn/com/xy/sms/sdk/db/entity/t;I)J

    invoke-static {v1, p1, v2}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->requestScenceconfig(Ljava/util/List;IZ)V

    return-object v7

    :cond_2
    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/t;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/t;-><init>()V

    const-string/jumbo v1, "-1"

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;

    iput-object p0, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    iput v2, v0, Lcn/com/xy/sms/sdk/db/entity/t;->d:I

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->checkNetWork(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "titleNo ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u52a0\u5165\u60c5\u666f\u961f\u5217"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Lcn/com/xy/sms/sdk/db/entity/t;I)J

    :goto_1
    return-object v7

    :cond_3
    invoke-static {p0, p1, v5}, Lcn/com/xy/sms/sdk/db/entity/s;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "titleNo ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "sceneRuleList is not Empty"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->querySceneRuleByCondition(Ljava/util/List;)Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    move-result-object v1

    if-nez v1, :cond_5

    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v0, :cond_11

    :goto_2
    return-object v7

    :cond_5
    const-string/jumbo v0, ""

    if-nez v1, :cond_8

    :goto_3
    iget v3, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->isDownload:I

    if-ne v3, v5, :cond_9

    :cond_6
    sget-boolean v2, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v2, :cond_b

    :goto_4
    if-nez v1, :cond_c

    :cond_7
    :goto_5
    return-object v1

    :cond_8
    iget-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    goto :goto_3

    :cond_9
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->isResDownloaded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/q;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_d

    :cond_a
    :goto_6
    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v0, :cond_10

    :goto_7
    return-object v7

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "titleNo ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5168\u90e8\u4e0b\u8f7d\u4e86. urls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    iget v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->isDownload:I

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "isdownload"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "tb_scenerule_config"

    const-string/jumbo v3, "id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateIsdownload: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_8
    if-ge v1, v4, :cond_f

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/C;->a(Ljava/lang/String;)V

    sget-boolean v5, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v5, :cond_e

    :goto_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "titleNo ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " download urls: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_f
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/C;->a(Z)V

    goto/16 :goto_6

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "titleNo ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "urls---\u8fd8\u6ca1\u6709\u5168\u90e8\u4e0b\u8f7d\u4e86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "titleNo ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u6839\u636e\u6761\u4ef6\u627e\u4e0d\u5230\u5bf9\u5e94\u7684\uff0c\u4e0d\u5f39\u7a97\uff0c\u4e5f\u4e0d\u8bf7\u6c42"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "titleNo ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " \u52a0\u5165\u60c5\u666f\u961f\u5217 wifi\uff0c\u76f4\u63a5\u4e0b\u8f7d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Lcn/com/xy/sms/sdk/db/entity/t;I)J

    invoke-static {v1, p1, v2}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->requestScenceconfig(Ljava/util/List;IZ)V

    goto/16 :goto_1
.end method

.method public static getUrls(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "\uff1b"

    const-string/jumbo v1, ";"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static handleSceneUrllist(Ljava/util/List;Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/t;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    and-int/2addr v1, v2

    if-nez v1, :cond_2

    :goto_2
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v0

    :goto_3
    if-ge v4, v5, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/C;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_3
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v2, "tb_xml_res_download"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "scene_id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "url"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "status"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "pos"

    aput-object v8, v6, v7

    const-string/jumbo v7, "url = ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v2, v6, v7, v8}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "scene_id"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "url"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "pos"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "sceneType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "insert_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "tb_xml_res_download"

    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    const/4 v1, 0x1

    :try_start_3
    invoke-static {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_6
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/y;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v6

    if-lez v6, :cond_4

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_7
    :try_start_5
    const-string/jumbo v6, "XIAOYUAN"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "insertOrUpdate: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v1, 0x1

    :try_start_6
    invoke-static {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_8
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/y;->a(Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7
.end method

.method public static handleSceneconfig(Ljava/util/List;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/t;",
            ">;I)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move v1, v3

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    :goto_1
    and-int/2addr v0, v1

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    :goto_3
    if-ge v2, v7, :cond_c

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/t;

    if-nez v0, :cond_4

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    iput v1, v0, Lcn/com/xy/sms/sdk/db/entity/t;->d:I

    iget-object v4, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eq p1, v6, :cond_6

    :try_start_1
    const-string/jumbo v1, "scene_id=? and sceneType != 1"

    :goto_4
    const-string/jumbo v5, "tb_scenerule_config"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v5, v1, v8}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "insertOrUpdate="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Lcn/com/xy/sms/sdk/db/entity/t;I)J

    iget-object v8, v0, Lcn/com/xy/sms/sdk/db/entity/t;->f:Ljava/util/List;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/t;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    if-nez v8, :cond_7

    move v1, v3

    :goto_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v6

    :goto_7
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v4, v3

    :goto_8
    if-ge v4, v9, :cond_3

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/db/entity/s;->b(Lcn/com/xy/sms/sdk/db/entity/SceneRule;I)J

    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->getUrls(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    if-nez v10, :cond_9

    :cond_5
    :goto_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8

    :cond_6
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scene_id=? and sceneType = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v4, "XIAOYUAN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "deleteSceneRuleById: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_7
    move v1, v6

    goto :goto_6

    :cond_8
    move v0, v3

    goto :goto_7

    :cond_9
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v5, v3

    :goto_a
    if-ge v5, v11, :cond_b

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v12, Lcn/com/xy/sms/sdk/db/entity/p;

    invoke-direct {v12}, Lcn/com/xy/sms/sdk/db/entity/p;-><init>()V

    const/4 v13, 0x0

    iput v13, v12, Lcn/com/xy/sms/sdk/db/entity/p;->e:I

    iget-object v13, v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    iput-object v13, v12, Lcn/com/xy/sms/sdk/db/entity/p;->b:Ljava/lang/String;

    const/4 v13, 0x0

    iput v13, v12, Lcn/com/xy/sms/sdk/db/entity/p;->d:I

    iput-object v1, v12, Lcn/com/xy/sms/sdk/db/entity/p;->c:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/q;->b(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    :goto_b
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_a

    :cond_a
    invoke-static {v12}, Lcn/com/xy/sms/sdk/db/entity/q;->a(Lcn/com/xy/sms/sdk/db/entity/p;)Lcn/com/xy/sms/sdk/db/entity/p;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/C;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/C;->a(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :cond_c
    return-void
.end method

.method public static isResDownloaded(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    :cond_0
    const-string/jumbo v0, "\uff1b"

    const-string/jumbo v1, ";"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    return v2

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/q;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u8fd8\u6ca1\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    return v6
.end method

.method public static postqueryIccidScene()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, "PostCount"

    const-wide/16 v4, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getLongParam(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v2, "LastPostIccidSceneTime"

    const-wide/16 v4, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getLongParam(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v2, v10

    if-nez v4, :cond_0

    const-string/jumbo v2, "LastPostIccidSceneTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_0
    move-wide v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "System.currentTimeMillis()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-nez v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v6, 0xc

    const-wide/32 v8, 0x48190800

    invoke-static {v6, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    add-long/2addr v6, v4

    cmp-long v2, v2, v6

    if-gtz v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "time+Constant.FirstpostqueryIccidScene="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    const-wide/32 v4, 0x48190800

    invoke-static {v3, v4, v5}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_2
    if-nez v1, :cond_7

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v6, 0xd

    const-wide v8, 0x134fd9000L

    invoke-static {v6, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    add-long/2addr v6, v4

    cmp-long v2, v2, v6

    if-gtz v2, :cond_5

    move v2, v1

    :goto_4
    if-nez v2, :cond_6

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "time+Constant.postqueryIccidScene="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    const-wide v4, 0x134fd9000L

    invoke-static {v3, v4, v5}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "postqueryIccidScene: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move v2, v0

    goto :goto_4

    :cond_6
    move v1, v0

    goto :goto_5

    :cond_7
    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/i;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/t;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/t;

    iget v0, v0, Lcn/com/xy/sms/sdk/db/entity/t;->c:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_8
    new-instance v0, Lcn/com/xy/sms/sdk/util/w;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/util/w;-><init>()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->getImeiAndXinghao(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4, v3}, Lcn/com/xy/sms/sdk/net/util/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_7
    return-void

    :cond_9
    const-string/jumbo v2, "990005"

    sget-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->STATSERVICE_URL:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeLoginBeforeHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method

.method public static querySceneRuleByCondition(Ljava/util/List;)Lcn/com/xy/sms/sdk/db/entity/SceneRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;)",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return-object v2

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    return-object v0
.end method

.method public static requestQuerySceneRuleRequest(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;I)V"
        }
    .end annotation

    new-instance v3, Lcn/com/xy/sms/sdk/util/v;

    invoke-direct {v3, p1}, Lcn/com/xy/sms/sdk/util/v;-><init>(I)V

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/k;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getPopupServiceUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeHttpRequest(IILjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestQuerySceneRuleRequest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static requestScenceconfig(Ljava/util/List;IZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/t;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v3, Lcn/com/xy/sms/sdk/util/u;

    invoke-direct {v3, p0, p1, p2}, Lcn/com/xy/sms/sdk/util/u;-><init>(Ljava/util/List;IZ)V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/k;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v7

    :goto_2
    if-ge v2, v3, :cond_7

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/t;

    iget-object v4, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v6

    :goto_3
    :try_start_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "scene_id"

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "sceneType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_4
    if-nez v1, :cond_6

    :cond_2
    const-string/jumbo v0, "tb_scene_config"

    invoke-static {v0, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    const/4 v0, 0x1

    :try_start_3
    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getPopupServiceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "queryscene"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeHttpRequest(IILjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestScenceconfig: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_4
    const-string/jumbo v1, "tb_scene_config"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "scene_id"

    aput-object v8, v5, v7

    const-string/jumbo v7, "scene_id = ? and sceneType = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v5, v7, v8}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    goto/16 :goto_3

    :cond_5
    :try_start_5
    const-string/jumbo v7, "sceneVersion"

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_7
    :try_start_6
    const-string/jumbo v4, "XIAOYUAN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "insertOrupdate: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v0, 0x1

    :try_start_7
    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_6

    :cond_6
    :try_start_8
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "tb_scene_config"

    const-string/jumbo v7, "scene_id = ? and sceneType = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v0, v5, v7, v8}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :goto_8
    const/4 v2, 0x1

    :try_start_9
    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :cond_7
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v1, v6

    goto :goto_7
.end method

.method public static updateData()V
    .locals 14

    const-wide/32 v12, 0x48190800

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "LastSceneConfigUpdate"

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v10, v11, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getLongParam(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v0, 0xa

    invoke-static {v0, v12, v13}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v0, v6, v4

    if-gtz v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/u;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->requestScenceconfig(Ljava/util/List;IZ)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/u;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->requestScenceconfig(Ljava/util/List;IZ)V

    const-string/jumbo v0, "LastSceneConfigUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    :cond_0
    const-string/jumbo v0, "LastSceneRuleUpdate"

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v10, v11, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getLongParam(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v0, 0xb

    invoke-static {v0, v12, v13}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v0, v6, v4

    if-gtz v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/s;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->requestQuerySceneRuleRequest(Ljava/util/List;I)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/s;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->requestQuerySceneRuleRequest(Ljava/util/List;I)V

    const-string/jumbo v0, "LastSceneRuleUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
