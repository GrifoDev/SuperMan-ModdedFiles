.class public final Lcn/com/xy/sms/sdk/net/util/h;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcn/com/xy/sms/sdk/net/util/e;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/util/e;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :cond_0
    return-void

    :pswitch_0
    return-void

    :pswitch_1
    return-void

    :pswitch_2
    return-void

    :pswitch_3
    return-void

    :pswitch_4
    return-void

    :pswitch_5
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/g;->e()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryDeftIccidInfo(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/util/e;->c()[Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    if-nez v1, :cond_6

    :cond_1
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/service/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v1, :cond_5

    :cond_3
    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/service/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    array-length v2, v1

    if-lez v2, :cond_3

    iget-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/service/c/g;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "EmergencyActionUtil doNoWait"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    :try_start_1
    array-length v0, v1

    if-lez v0, :cond_1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/service/c/g;->a([Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->updateData()V

    return-void

    :pswitch_7
    return-void

    :pswitch_8
    return-void

    :pswitch_9
    return-void

    :pswitch_a
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/util/e;->c()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->deleteMatchCache(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_8
    return-void

    :pswitch_b
    :try_start_2
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/util/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "executeCmd11: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/CommandAnalyzer;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/net/util/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/util/e;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/g;->e()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryDeftIccidInfo(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/util/e;->c()[Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_2

    if-nez v0, :cond_5

    :cond_1
    const-string/jumbo v0, ""

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/service/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "EmergencyActionUtil doNoWait"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "EmergencyActionUtil doEmAction"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    :try_start_3
    iget-object v0, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    iget-object v2, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/service/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    array-length v3, v0

    if-lez v3, :cond_3

    iget-object v3, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    iget-object v2, v2, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/c/g;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    array-length v2, v0

    if-lez v2, :cond_1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/c/g;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->updateData()V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/h;->c(Lcn/com/xy/sms/sdk/net/util/e;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/h;->d(Lcn/com/xy/sms/sdk/net/util/e;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static b(Lcn/com/xy/sms/sdk/net/util/e;)V
    .locals 3

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/g;->e()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryDeftIccidInfo(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/util/e;->c()[Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-nez v1, :cond_4

    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/service/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/service/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    array-length v2, v1

    if-lez v2, :cond_2

    iget-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/service/c/g;->a([Ljava/lang/String;)V

    return-void

    :cond_4
    array-length v0, v1

    if-lez v0, :cond_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/service/c/g;->a([Ljava/lang/String;)V

    return-void
.end method

.method private static c(Lcn/com/xy/sms/sdk/net/util/e;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/util/e;->c()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, v1

    if-lez v2, :cond_0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->deleteMatchCache(Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static d(Lcn/com/xy/sms/sdk/net/util/e;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/util/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "executeCmd11: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method
