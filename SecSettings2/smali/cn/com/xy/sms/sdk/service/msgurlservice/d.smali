.class final Lcn/com/xy/sms/sdk/service/msgurlservice/d;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:[Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->a:[Ljava/lang/String;

    aget-object v4, v4, v6

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->e:Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->checkValidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->a:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/entity/h;->a(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
