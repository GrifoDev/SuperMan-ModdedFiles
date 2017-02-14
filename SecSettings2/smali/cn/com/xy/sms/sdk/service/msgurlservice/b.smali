.class final Lcn/com/xy/sms/sdk/service/msgurlservice/b;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/util/Map;

.field private final synthetic b:Ljava/util/HashMap;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->a:Ljava/util/Map;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 6

    const/16 v5, 0x194

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    if-nez v0, :cond_9

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->a:Ljava/util/Map;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenMust(Ljava/util/Map;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    const/16 v2, 0x193

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->getVailResult(Lorg/json/JSONArray;)I

    move-result v0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    if-nez v2, :cond_8

    :goto_1
    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->d:Z

    invoke-static {v1, v2, v0, v3}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_7
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    :try_start_1
    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkValidUrlNet: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_9
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
