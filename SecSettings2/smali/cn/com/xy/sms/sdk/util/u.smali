.class final Lcn/com/xy/sms/sdk/util/u;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/util/List;

.field private final synthetic b:I

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/util/List;IZ)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/util/u;->a:Ljava/util/List;

    iput p2, p0, Lcn/com/xy/sms/sdk/util/u;->b:I

    iput-boolean p3, p0, Lcn/com/xy/sms/sdk/util/u;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 11

    const/4 v3, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, p1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/u;->a:Ljava/util/List;

    if-nez v1, :cond_3

    :cond_2
    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/util/j;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "sceneconfigList"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5904\u7406\u56de\u6765\u7684 sceneconfigList="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/com/xy/sms/sdk/util/u;->b:I

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->handleSceneconfig(Ljava/util/List;I)V

    const-string/jumbo v0, "sceneUrllist"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5904\u7406\u56de\u6765\u7684 sceneUrllist="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/u;->a:Ljava/util/List;

    iget v2, p0, Lcn/com/xy/sms/sdk/util/u;->b:I

    invoke-static {v1, v0, v2}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->handleSceneUrllist(Ljava/util/List;Ljava/util/ArrayList;I)V

    return-void

    :cond_3
    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/u;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/t;

    iget-object v4, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    iget v5, p0, Lcn/com/xy/sms/sdk/util/u;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "scene_id"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "sceneType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "isCheck"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "tb_scene_config"

    const-string/jumbo v8, "scene_id = ? and sceneType = ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static {v7, v6, v8, v9}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    iget-boolean v4, p0, Lcn/com/xy/sms/sdk/util/u;->c:Z

    if-nez v4, :cond_4

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

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

    :catch_1
    move-exception v4

    goto :goto_2
.end method
