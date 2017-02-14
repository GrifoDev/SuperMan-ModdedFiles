.class final Lcn/com/xy/sms/sdk/net/h;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/net/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/net/h;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/net/h;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/net/NetWebUtil;->a(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
