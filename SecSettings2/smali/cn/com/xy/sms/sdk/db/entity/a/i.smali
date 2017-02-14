.class final Lcn/com/xy/sms/sdk/db/entity/a/i;
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

.field private final synthetic f:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;Z)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->f:Lcn/com/xy/sms/util/SdkCallBack;

    iput-boolean p7, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->f:Lcn/com/xy/sms/util/SdkCallBack;

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->d:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->e:Ljava/lang/String;

    iget-object v6, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v7, 0x1

    iget-boolean v9, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->g:Z

    const/4 v0, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/sdk/service/c/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;IZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/service/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method
