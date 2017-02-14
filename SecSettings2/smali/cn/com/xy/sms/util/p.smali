.class final Lcn/com/xy/sms/util/p;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Ljava/lang/String;

.field private final synthetic j:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/util/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/p;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/util/p;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/util/p;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/xy/sms/util/p;->g:Ljava/lang/String;

    iput-object p8, p0, Lcn/com/xy/sms/util/p;->h:Ljava/lang/String;

    iput-object p9, p0, Lcn/com/xy/sms/util/p;->i:Ljava/lang/String;

    iput-object p10, p0, Lcn/com/xy/sms/util/p;->j:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    new-instance v0, Lcn/com/xy/sms/util/q;

    iget-object v2, p0, Lcn/com/xy/sms/util/p;->e:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/p;->f:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/util/p;->g:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/util/p;->h:Ljava/lang/String;

    iget-object v6, p0, Lcn/com/xy/sms/util/p;->i:Ljava/lang/String;

    iget-object v7, p0, Lcn/com/xy/sms/util/p;->j:Lcn/com/xy/sms/util/SdkCallBack;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/util/q;-><init>(Lcn/com/xy/sms/util/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    iget-object v1, p0, Lcn/com/xy/sms/util/p;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/p;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/p;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/util/p;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcn/com/xy/sms/util/ParseManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
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
