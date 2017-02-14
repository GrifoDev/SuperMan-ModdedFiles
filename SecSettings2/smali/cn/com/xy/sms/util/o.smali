.class final Lcn/com/xy/sms/util/o;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lorg/json/JSONObject;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/util/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/o;->c:Lorg/json/JSONObject;

    iput-object p4, p0, Lcn/com/xy/sms/util/o;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/util/o;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/util/o;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/o;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcn/com/xy/sms/util/o;->c:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->removeUselessKey(Lorg/json/JSONObject;)V

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "msg_num_md5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string/jumbo v3, "phonenum"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcn/com/xy/sms/util/o;->a:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "scene_id"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcn/com/xy/sms/util/o;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v3, "msg_id"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget-object v3, p0, Lcn/com/xy/sms/util/o;->e:Ljava/lang/String;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-string/jumbo v3, "bubble_result"

    aput-object v3, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "save_time"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string/jumbo v1, "bubble_lasttime"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "updateMatchCacheManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
