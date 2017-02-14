.class final Lcn/com/xy/sms/sdk/service/msgurlservice/a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v2, "_ARR_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v2, v1, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/h;->b(Ljava/lang/String;I)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    array-length v2, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-gtz v2, :cond_2

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method
