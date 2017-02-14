.class final Lcn/com/xy/sms/sdk/iccid/a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/db/entity/IccidInfo;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/db/entity/IccidInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/iccid/a;->a:Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/iccid/a;->a:Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->a(Landroid/content/Context;Lcn/com/xy/sms/sdk/db/entity/IccidInfo;Z)V
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
