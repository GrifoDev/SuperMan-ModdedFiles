.class final Lcn/com/xy/sms/sdk/db/g;
.super Ljava/lang/Thread;
.source "Unknown"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v0, "xiaoyuan"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/db/g;->setName(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "tb_regex"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "regex_text"

    aput-object v3, v2, v0

    const-string/jumbo v8, "1"

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcn/com/xy/sms/sdk/db/a/a;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v1, :cond_3

    :cond_1
    :goto_0
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_3
    const-string/jumbo v0, "parseUtilMain"

    const-string/jumbo v2, "1"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcn/com/xy/sms/sdk/db/entity/f;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/e;->d()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getInidb_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->updateParse(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkHasData: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method
