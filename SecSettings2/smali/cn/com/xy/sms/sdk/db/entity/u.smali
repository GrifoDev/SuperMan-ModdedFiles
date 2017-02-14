.class public final Lcn/com/xy/sms/sdk/db/entity/u;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x1

.field private static c:I = 0x0

.field private static d:I = 0x1

.field private static e:Ljava/lang/String; = "scene_id"

.field private static f:Ljava/lang/String; = "sceneVersion"

.field private static g:Ljava/lang/String; = "sceneType"

.field private static h:Ljava/lang/String; = "tb_scene_config"

.field private static i:Ljava/lang/String; = "isCheck"

.field private static j:Ljava/lang/String; = "isUse"

.field private static k:Ljava/lang/String; = "useCount"

.field private static l:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_scene_config"

.field private static m:Ljava/lang/String; = "create table  if not exists tb_scene_config (scene_id TEXT,sceneType INTEGER DEFAULT \'0\',isCheck INTEGER DEFAULT \'0\',sceneVersion TEXT,isUse INTEGER DEFAULT \'0\',useCount INTEGER DEFAULT \'0\')"

.field private static n:Ljava/lang/String; = "ALTER TABLE tb_scene_config ADD COLUMN sceneType INTEGER DEFAULT \'-1\'"

.field private static o:Ljava/lang/String; = "ALTER TABLE tb_scene_config ADD COLUMN isCheck INTEGER DEFAULT \'0\'"

.field private static p:Ljava/lang/String; = "ALTER TABLE tb_scene_config ADD COLUMN useCount INTEGER DEFAULT \'0\'"

.field private static q:Ljava/lang/String; = "ALTER TABLE tb_scene_config ADD COLUMN isUse INTEGER DEFAULT \'0\'"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/com/xy/sms/sdk/db/entity/t;I)J
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, -0x1

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    const-string/jumbo v4, "scene_id"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "sceneType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "isCheck"

    iget v5, p0, Lcn/com/xy/sms/sdk/db/entity/t;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v1, :cond_3

    :cond_0
    const-string/jumbo v4, "tb_scene_config"

    invoke-static {v4, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :goto_2
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_3
    return-wide v2

    :cond_1
    :try_start_1
    const-string/jumbo v0, "tb_scene_config"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "scene_id"

    aput-object v6, v4, v5

    const-string/jumbo v5, "scene_id = ?  and sceneType = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v4, v5, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "sceneVersion"

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, "tb_scene_config"

    const-string/jumbo v5, "scene_id = ? and sceneType = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v0, v5, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method private static a(Lcn/com/xy/sms/sdk/db/entity/t;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "useCount"

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/t;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "isUse"

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/t;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/t;
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq p1, v9, :cond_1

    :try_start_0
    const-string/jumbo v2, "scene_id=? and sceneType != 1"

    :goto_0
    const-string/jumbo v0, "tb_scene_config"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "scene_id"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "sceneVersion"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v7, "1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_1
    return-object v8

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scene_id=? and sceneType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "sceneVersion"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "scene_id"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object v0, v8

    :goto_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/t;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/t;-><init>()V

    invoke-virtual {v1, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "querySceneconfigBySceneId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_1

    :cond_3
    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v8, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3
.end method

.method public static a(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/t;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eq p0, v7, :cond_1

    :try_start_0
    const-string/jumbo v0, "sceneType != 1 and isUse = 1"

    :goto_0
    const-string/jumbo v3, "tb_scene_config"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "scene_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "sceneVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "useCount"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_1
    return-object v2

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sceneType = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " and isUse"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " = 1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "scene_id"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "sceneVersion"

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "useCount"

    invoke-virtual {v1, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :goto_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcn/com/xy/sms/sdk/db/entity/t;

    invoke-direct {v5}, Lcn/com/xy/sms/sdk/db/entity/t;-><init>()V

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcn/com/xy/sms/sdk/db/entity/t;->c:I

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryAllSceneconfig: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method public static a(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/t;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eq p0, v7, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sceneType != 1 and isCheck = 0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v3, "tb_scene_config"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "scene_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "sceneVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_1
    return-object v2

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sceneType = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " and isCheck"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " = 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "scene_id"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "sceneVersion"

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :goto_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcn/com/xy/sms/sdk/db/entity/t;

    invoke-direct {v4}, Lcn/com/xy/sms/sdk/db/entity/t;-><init>()V

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryAllSceneconfig: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method public static a()V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "tb_scene_config"

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

.method public static a(Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/t;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/t;-><init>()V

    iput-object p0, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    iput v9, v0, Lcn/com/xy/sms/sdk/db/entity/t;->c:I

    :try_start_0
    iget-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v2, "tb_scene_config"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "scene_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "isUse"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "useCount"

    aput-object v5, v3, v4

    const-string/jumbo v4, "scene_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    :goto_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lcn/com/xy/sms/sdk/db/entity/t;->e:I

    const/4 v2, 0x0

    iput v2, v0, Lcn/com/xy/sms/sdk/db/entity/t;->c:I

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Lcn/com/xy/sms/sdk/db/entity/t;)Landroid/content/ContentValues;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "values:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tb_scene_config"

    const-string/jumbo v4, "scene_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v2, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clearCount: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "scene_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sceneType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "isCheck"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "tb_scene_config"

    const-string/jumbo v2, "scene_id = ? and sceneType = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "scene_id"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sceneType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    if-nez v1, :cond_3

    :cond_0
    const-string/jumbo v2, "tb_scene_config"

    invoke-static {v2, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "tb_scene_config"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "scene_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "scene_id = ? and sceneType = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "sceneVersion"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "insertOrupdate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "tb_scene_config"

    const-string/jumbo v3, "scene_id = ? and sceneType = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v9, 0x1

    const-string/jumbo v0, "titleNo"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcn/com/xy/sms/sdk/db/entity/t;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/db/entity/t;-><init>()V

    iput-object v0, v2, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    iput v9, v2, Lcn/com/xy/sms/sdk/db/entity/t;->c:I

    :try_start_0
    iget-object v0, v2, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "tb_scene_config"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "scene_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "isUse"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "useCount"

    aput-object v5, v3, v4

    const-string/jumbo v4, "scene_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v2, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    :goto_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "useCount"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    iput v3, v2, Lcn/com/xy/sms/sdk/db/entity/t;->e:I

    iput v0, v2, Lcn/com/xy/sms/sdk/db/entity/t;->c:I

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Lcn/com/xy/sms/sdk/db/entity/t;)Landroid/content/ContentValues;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "values:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tb_scene_config"

    const-string/jumbo v4, "scene_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v0, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "insertOrUpdate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method private static b(Lcn/com/xy/sms/sdk/db/entity/t;I)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "scene_id"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sceneType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "isCheck"

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/t;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_0
    const-string/jumbo v1, "sceneVersion"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "scene_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sceneType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "sceneVersion"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "scene_id=? and sceneType != 1"

    :goto_0
    const-string/jumbo v1, "tb_scene_config"

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

    const-string/jumbo v3, "deleteSceneconfigById: "

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
