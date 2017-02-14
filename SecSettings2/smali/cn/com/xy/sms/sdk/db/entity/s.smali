.class public final Lcn/com/xy/sms/sdk/db/entity/s;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/lang/String; = "id"

.field private static b:Ljava/lang/String; = "sceneRuleVersion"

.field private static c:Ljava/lang/String; = "scene_id"

.field private static d:Ljava/lang/String; = "province"

.field private static e:Ljava/lang/String; = "operator"

.field private static f:Ljava/lang/String; = "expire_date"

.field private static g:Ljava/lang/String; = "Func_call"

.field private static h:Ljava/lang/String; = "Func_acc_url"

.field private static i:Ljava/lang/String; = "Func_reply_sms"

.field private static j:Ljava/lang/String; = "Func_config"

.field private static k:Ljava/lang/String; = "res_urls"

.field private static l:Ljava/lang/String; = "s_version"

.field private static m:Ljava/lang/String; = "Scene_page_config"

.field private static n:Ljava/lang/String; = "isdownload"

.field private static o:Ljava/lang/String; = "tb_scenerule_config"

.field private static p:Ljava/lang/String; = "sceneType"

.field private static q:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_scenerule_config"

.field private static r:Ljava/lang/String; = "create table  if not exists tb_scenerule_config (id TEXT,sceneRuleVersion TEXT,scene_id TEXT,province TEXT,operator TEXT,expire_date TEXT,Func_call INTEGER,Func_acc_url INTEGER,Func_reply_sms INTEGER,Func_config TEXT,res_urls TEXT,s_version TEXT,Scene_page_config TEXT,sceneType INTEGER DEFAULT \'-1\',isdownload INTEGER DEFAULT \'0\')"

.field private static s:Ljava/lang/String; = "ALTER TABLE tb_scenerule_config ADD COLUMN isdownload INTEGER DEFAULT \'0\'"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x1

    move/from16 v0, p0

    if-eq v0, v2, :cond_1

    :try_start_0
    const-string/jumbo v2, "sceneType != 1"

    :goto_0
    const-string/jumbo v5, "tb_scenerule_config"

    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "scene_id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "province"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "operator"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "expire_date"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "Func_call"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "Func_acc_url"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string/jumbo v8, "Func_reply_sms"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, "Func_config"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string/jumbo v8, "res_urls"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v8, "s_version"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string/jumbo v8, "Scene_page_config"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v8, "isdownload"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string/jumbo v8, "sceneRuleVersion"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_1
    return-object v4

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sceneType = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "id"

    invoke-virtual {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v5, "scene_id"

    invoke-virtual {v3, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "province"

    invoke-virtual {v3, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "operator"

    invoke-virtual {v3, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "expire_date"

    invoke-virtual {v3, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "Func_call"

    invoke-virtual {v3, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "Func_acc_url"

    invoke-virtual {v3, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "Func_reply_sms"

    invoke-virtual {v3, v11}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "Func_config"

    invoke-virtual {v3, v12}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "res_urls"

    invoke-virtual {v3, v13}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "s_version"

    invoke-virtual {v3, v14}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "Scene_page_config"

    invoke-virtual {v3, v15}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v16, "isdownload"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v17, "sceneRuleVersion"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    :goto_2
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v18, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    invoke-direct/range {v18 .. v18}, Lcn/com/xy/sms/sdk/db/entity/SceneRule;-><init>()V

    invoke-virtual {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->province:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->operator:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->expire_date:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_call:I

    invoke-virtual {v3, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_acc_url:I

    invoke-virtual {v3, v11}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_reply_sms:I

    invoke-virtual {v3, v12}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_config:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->s_version:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->isDownload:I

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->sceneruleVersion:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v5, "XIAOYUAN"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "queryAllSceneRule: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v2
.end method

.method public static a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/com/xy/sms/sdk/db/entity/s;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-nez p2, :cond_2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scene_id = \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\' "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " and sceneType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " != 1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v5, "tb_scenerule_config"

    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "scene_id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "province"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "operator"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "expire_date"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "Func_call"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "Func_acc_url"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string/jumbo v8, "Func_reply_sms"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, "Func_config"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string/jumbo v8, "res_urls"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v8, "s_version"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string/jumbo v8, "Scene_page_config"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v8, "isdownload"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string/jumbo v8, "sceneRuleVersion"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_4

    :cond_1
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_2
    return-object v4

    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scene_id LIKE \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x5

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\' "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " and sceneType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v2, "id"

    invoke-virtual {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v5, "scene_id"

    invoke-virtual {v3, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "province"

    invoke-virtual {v3, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "operator"

    invoke-virtual {v3, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "expire_date"

    invoke-virtual {v3, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "Func_call"

    invoke-virtual {v3, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "Func_acc_url"

    invoke-virtual {v3, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "Func_reply_sms"

    invoke-virtual {v3, v11}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "Func_config"

    invoke-virtual {v3, v12}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "res_urls"

    invoke-virtual {v3, v13}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "s_version"

    invoke-virtual {v3, v14}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "Scene_page_config"

    invoke-virtual {v3, v15}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v16, "isdownload"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v17, "sceneRuleVersion"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    :goto_3
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_1

    new-instance v18, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    invoke-direct/range {v18 .. v18}, Lcn/com/xy/sms/sdk/db/entity/SceneRule;-><init>()V

    invoke-virtual {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->province:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->operator:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->expire_date:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_call:I

    invoke-virtual {v3, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_acc_url:I

    invoke-virtual {v3, v11}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_reply_sms:I

    invoke-virtual {v3, v12}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_config:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->s_version:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->isDownload:I

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->sceneruleVersion:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v5, "XIAOYUAN"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "querySceneRuleBySceneId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v2
.end method

.method public static a()V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "tb_scenerule_config"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteAll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcn/com/xy/sms/sdk/db/entity/SceneRule;I)V
    .locals 6

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "isdownload"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "tb_scenerule_config"

    const-string/jumbo v2, "id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateIsdownload: "

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

.method public static b(I)I
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "Func_call"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "tb_scenerule_config"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateTag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public static b(Lcn/com/xy/sms/sdk/db/entity/SceneRule;I)J
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, -0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "id"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "sceneRuleVersion"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->sceneruleVersion:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "scene_id"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "province"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->province:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "operator"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->operator:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "expire_date"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->expire_date:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "Func_call"

    iget v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_call:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "Func_acc_url"

    iget v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_acc_url:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "Func_reply_sms"

    iget v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_reply_sms:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "Func_config"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_config:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "res_urls"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "s_version"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->s_version:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "Scene_page_config"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "isdownload"

    iget v5, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->isDownload:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "sceneType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v4, "tb_scenerule_config"

    invoke-static {v4, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :goto_1
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_2
    return-wide v2

    :cond_1
    :try_start_1
    const-string/jumbo v4, "tb_scenerule_config"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "sceneRuleVersion"

    aput-object v7, v5, v6

    const-string/jumbo v6, "id = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, "tb_scenerule_config"

    const-string/jumbo v5, "id=? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v0, v5, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v4, "XIAOYUAN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "insertOrUpdate: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method public static b()V
    .locals 6

    sget-object v2, Lcn/com/xy/sms/sdk/db/DBManager;->dblock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v0, "DELETE FROM tb_scenerule_config WHERE FUNC_CALL=10 AND scene_id IN (SELECT scene_id FROM tb_scenerule_config WHERE 1=1 GROUP BY scene_id HAVING COUNT(scene_id) > 1)"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteRepeatData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "scene_id=? and sceneType != 1"

    :goto_0
    const-string/jumbo v1, "tb_scenerule_config"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scene_id=? and sceneType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteSceneRuleById: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Lcn/com/xy/sms/sdk/db/entity/SceneRule;I)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sceneRuleVersion"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->sceneruleVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "scene_id"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "province"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->province:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "operator"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "expire_date"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->expire_date:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Func_call"

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_call:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "Func_acc_url"

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_acc_url:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "Func_reply_sms"

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_reply_sms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "Func_config"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_config:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "res_urls"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "s_version"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->s_version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Scene_page_config"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "isdownload"

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->isDownload:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "sceneType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
