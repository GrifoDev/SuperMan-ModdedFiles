.class final Lcn/com/xy/sms/sdk/service/c/j;
.super Ljava/lang/Thread;
.source "Unknown"


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/c/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/c/j;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/j;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/g;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/j;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcn/com/xy/sms/sdk/service/c/g;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/c/g;->b:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
