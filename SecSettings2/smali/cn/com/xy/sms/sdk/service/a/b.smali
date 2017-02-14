.class final Lcn/com/xy/sms/sdk/service/a/b;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private final synthetic a:Ljava/util/HashMap;

.field private final synthetic b:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/a/b;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/a/b;->b:Lcn/com/xy/sms/util/SdkCallBack;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/a/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/a/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/b;->b:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "-2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "no result"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_0
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/b;->b:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "-2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "server error"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/b;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenMust(Ljava/util/Map;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/b;->b:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "-3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "token refresh"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/b;->b:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "-2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "response code wrong"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_5
    array-length v0, p1

    if-ne v0, v7, :cond_4

    aget-object v0, p1, v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/a/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/a/b;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/db/entity/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/b;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/b;->b:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "-2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "insert into db wrong"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void
.end method
