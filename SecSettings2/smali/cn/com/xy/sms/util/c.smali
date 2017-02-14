.class final Lcn/com/xy/sms/util/c;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcn/com/xy/sms/util/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/c;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcn/com/xy/sms/util/c;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/util/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "msg_num_md5"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "phonenum"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcn/com/xy/sms/util/c;->a:Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "msg_id"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcn/com/xy/sms/util/c;->c:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string/jumbo v2, "session_reuslt"

    aput-object v2, v1, v0

    const/4 v2, 0x7

    iget-object v0, p0, Lcn/com/xy/sms/util/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/util/c;->d:Ljava/lang/String;

    :goto_1
    aput-object v0, v1, v2

    const/16 v0, 0x8

    const-string/jumbo v2, "save_time"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    iget-wide v2, p0, Lcn/com/xy/sms/util/c;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string/jumbo v2, "session_lasttime"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J

    return-void

    :cond_1
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
