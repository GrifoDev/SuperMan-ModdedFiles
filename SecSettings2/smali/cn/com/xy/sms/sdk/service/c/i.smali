.class final Lcn/com/xy/sms/sdk/service/c/i;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/c/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/c/i;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/com/xy/sms/sdk/service/c/i;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
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

    :cond_1
    :try_start_2
    array-length v0, p1

    if-lez v0, :cond_0

    const-string/jumbo v0, "-1"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/i;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/com/xy/sms/sdk/service/c/i;->c:Z

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkQueryPubInfoNum: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
