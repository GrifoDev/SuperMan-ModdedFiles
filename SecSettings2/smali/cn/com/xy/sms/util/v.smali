.class final Lcn/com/xy/sms/util/v;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(ILcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/util/v;->a:I

    iput-object p2, p0, Lcn/com/xy/sms/util/v;->b:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/util/v;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcn/com/xy/sms/util/v;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/util/v;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string/jumbo v2, "logoc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/util/v;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string/jumbo v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/util/v;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    goto :goto_0
.end method
