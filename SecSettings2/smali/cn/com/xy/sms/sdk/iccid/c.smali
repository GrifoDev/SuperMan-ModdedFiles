.class final Lcn/com/xy/sms/sdk/iccid/c;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/iccid/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/iccid/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/iccid/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/iccid/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/iccid/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/iccid/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
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
