.class final Lcn/com/xy/sms/sdk/service/c/m;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:I

.field private final synthetic g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/service/c/m;->a:Z

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/c/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/c/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/c/m;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/c/m;->e:Ljava/lang/String;

    iput p6, p0, Lcn/com/xy/sms/sdk/service/c/m;->f:I

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/c/m;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/service/c/m;->a:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/c/m;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/c/m;->e:Ljava/lang/String;

    iget v0, p0, Lcn/com/xy/sms/sdk/service/c/m;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/c/m;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/sdk/service/c/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;IZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "querySinglePubInfoFromNetServer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
