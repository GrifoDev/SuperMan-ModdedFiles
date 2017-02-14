.class final Lcn/com/xy/sms/sdk/util/v;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/sdk/util/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 11

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v1, :cond_2

    :cond_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/j;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_7

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    iget v1, p0, Lcn/com/xy/sms/sdk/util/v;->a:I

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/s;->b(Lcn/com/xy/sms/sdk/db/entity/SceneRule;I)J

    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->getUrls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v4, v3

    :goto_3
    if-ge v4, v8, :cond_6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v9, Lcn/com/xy/sms/sdk/db/entity/p;

    invoke-direct {v9}, Lcn/com/xy/sms/sdk/db/entity/p;-><init>()V

    const/4 v10, 0x0

    iput v10, v9, Lcn/com/xy/sms/sdk/db/entity/p;->e:I

    iget-object v10, v0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    iput-object v10, v9, Lcn/com/xy/sms/sdk/db/entity/p;->b:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, v9, Lcn/com/xy/sms/sdk/db/entity/p;->d:I

    iput-object v1, v9, Lcn/com/xy/sms/sdk/db/entity/p;->c:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/q;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_5
    invoke-static {v9}, Lcn/com/xy/sms/sdk/db/entity/q;->a(Lcn/com/xy/sms/sdk/db/entity/p;)Lcn/com/xy/sms/sdk/db/entity/p;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/C;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

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

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/C;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    return-void
.end method
