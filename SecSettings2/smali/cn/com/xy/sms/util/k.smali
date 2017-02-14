.class final Lcn/com/xy/sms/util/k;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/Map;

.field private final synthetic b:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/k;->a:Ljava/util/Map;

    iput-object p2, p0, Lcn/com/xy/sms/util/k;->b:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "xiaoyuan_pool_netutil"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    sget v0, Lcn/com/xy/sms/sdk/queue/g;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcn/com/xy/sms/util/k;->a:Ljava/util/Map;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/util/k;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/e;->c()Lcn/com/xy/sms/sdk/db/entity/g;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/e;->c(Lcn/com/xy/sms/sdk/db/entity/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/e;->c(Lcn/com/xy/sms/sdk/db/entity/g;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    iget-object v0, p0, Lcn/com/xy/sms/util/k;->a:Ljava/util/Map;

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->c()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcn/com/xy/sms/sdk/db/e;->c()Lcn/com/xy/sms/sdk/db/entity/g;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/e;->c(Lcn/com/xy/sms/sdk/db/entity/g;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/com/xy/sms/util/k;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sput-boolean v4, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/util/k;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string/jumbo v1, "-1"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-boolean v4, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcn/com/xy/sms/util/k;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-boolean v4, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    throw v0

    :cond_3
    :try_start_4
    iget-object v1, p0, Lcn/com/xy/sms/util/k;->a:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/g;->b(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/util/k;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/e;->a(Lcn/com/xy/sms/sdk/db/entity/g;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/com/xy/sms/util/k;->a:Ljava/util/Map;

    iget-object v1, p0, Lcn/com/xy/sms/util/k;->b:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/g;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcn/com/xy/sms/util/k;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
