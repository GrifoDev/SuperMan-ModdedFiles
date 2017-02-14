.class final Lcn/com/xy/sms/sdk/net/g;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 4

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

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "NEWHTTPTOKEN"

    invoke-static {v2, v0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    sget-object v2, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v3, "NEWHTTPTOKEN"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "aesKey"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v1, "AESKEY"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/i;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v2, "AESKEY"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/i;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
