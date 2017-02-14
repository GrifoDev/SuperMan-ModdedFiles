.class public final Lcn/com/xy/sms/sdk/db/entity/a/a;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/a;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getSubString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tb_centernum_location_info"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "cnum"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "areaCode"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "city"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "operator"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "checkTime"

    aput-object v5, v3, v4

    const-string/jumbo v4, "cnum = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    invoke-static {v3, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_1
    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "areaCode"

    invoke-virtual {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v2, "city"

    invoke-virtual {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v2, "operator"

    invoke-virtual {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v2, "checkTime"

    invoke-virtual {v3, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    move-object v2, v1

    :goto_2
    :try_start_2
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcn/com/xy/sms/sdk/db/entity/a;

    invoke-direct {v1}, Lcn/com/xy/sms/sdk/db/entity/a;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v0, v1, Lcn/com/xy/sms/sdk/db/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/com/xy/sms/sdk/db/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/com/xy/sms/sdk/db/entity/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/com/xy/sms/sdk/db/entity/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcn/com/xy/sms/sdk/db/entity/a;->g:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_4
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryCenterNumLocationInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v2, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_4
    invoke-static {v3, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3
.end method

.method public static a(Lcn/com/xy/sms/sdk/db/entity/a;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "cnum"

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/a;->e:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/a;->f:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    const-string/jumbo v3, "checkTime"

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/db/entity/a;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "tb_centernum_location_info"

    const-string/jumbo v4, "cnum = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcn/com/xy/sms/sdk/db/entity/a;->b:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v2, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    :goto_3
    if-nez v0, :cond_1

    const-string/jumbo v0, "tb_centernum_location_info"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void

    :cond_0
    const-string/jumbo v3, "areaCode"

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveCNumLocationInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v3, "city"

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/entity/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "operator"

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/entity/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method private static b(Lcn/com/xy/sms/sdk/db/entity/a;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "cnum"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a;->f:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    const-string/jumbo v1, "checkTime"

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/db/entity/a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_0
    const-string/jumbo v1, "areaCode"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "city"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "operator"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
