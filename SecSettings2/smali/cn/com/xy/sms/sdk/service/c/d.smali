.class final Lcn/com/xy/sms/sdk/service/c/d;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/c/d;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput p2, p0, Lcn/com/xy/sms/sdk/service/c/d;->b:I

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/c/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/c/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_8

    :cond_1
    :goto_2
    return-void

    :cond_2
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p1

    if-ne v0, v8, :cond_0

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/k;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->QueryTokenRequest(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/g;->a(Lorg/json/JSONObject;)V

    :try_start_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/d;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/com/xy/sms/sdk/service/c/d;->b:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcn/com/xy/sms/sdk/service/c/d;->b:I

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "pubMenuInfolist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_7

    :cond_5
    move-object v0, v4

    :goto_3
    :try_start_1
    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/d;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/c/d;->c:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v1, v5}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    move v1, v3

    goto/16 :goto_1

    :cond_6
    :try_start_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->PubInfoToJson(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/d;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/c/d;->c:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v1, v5}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move v1, v3

    :goto_5
    const-string/jumbo v5, "XIAOYUAN"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "queryPubInfoRequestWithId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_7
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/d;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/d;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    aput-object v4, v1, v3

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/d;->c:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_5
.end method
