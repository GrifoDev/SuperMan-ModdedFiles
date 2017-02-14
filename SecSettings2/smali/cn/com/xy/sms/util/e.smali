.class final Lcn/com/xy/sms/util/e;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/e;->a:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/util/e;->a:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/util/e;->a:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void
.end method
