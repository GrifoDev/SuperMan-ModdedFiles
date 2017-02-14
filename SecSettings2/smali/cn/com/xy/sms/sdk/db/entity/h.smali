.class public final Lcn/com/xy/sms/sdk/db/entity/h;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/lang/String; = "tb_msg_url"

.field private static b:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_msg_url"

.field private static c:I = 0x0

.field private static d:I = -0x1

.field private static e:I = 0x1

.field private static f:I = 0x2

.field private static g:Ljava/lang/String; = "_ARR_"

.field private static h:Ljava/lang/String; = "url"

.field private static i:Ljava/lang/String; = "check_time"

.field private static j:Ljava/lang/String; = "check_statu"

.field private static k:Ljava/lang/String; = "third_check_statu"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)I
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v0, "check_statu"

    :goto_0
    const-string/jumbo v2, "tb_msg_url"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string/jumbo v4, "url = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return v7

    :cond_1
    :try_start_1
    const-string/jumbo v0, "third_check_statu"

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryStatuByUrl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return v7

    :catchall_0
    move-exception v0

    invoke-static {v1, v8}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method public static a(Ljava/lang/String;I)J
    .locals 7

    const-wide/16 v2, -0x1

    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "url"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "third_check_statu"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v4, "check_time"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_msg_url"

    const-string/jumbo v4, "url = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v1, v0, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-string/jumbo v1, "tb_msg_url"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveOrUpdateThirdStatu: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "create table  if not exists tb_msg_url (  id INTEGER PRIMARY KEY, url TEXT, check_time integer default 0, check_statu integer default 0, third_check_statu integer default 0)"

    return-object v0
.end method

.method public static a([Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const v1, 0x7fffffff

    move v2, v0

    move v3, v0

    move v0, v1

    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_2

    aget-object v1, p0, v2

    invoke-static {v1, p1}, Lcn/com/xy/sms/sdk/db/entity/h;->a(Ljava/lang/String;Z)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    if-le v1, v0, :cond_1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "statu"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_3

    :goto_3
    return-object v5

    :cond_3
    const-string/jumbo v0, "hasNotCheck"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "_ARR_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/h;->b(Ljava/lang/String;I)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v2, :cond_0

    return-void

    :cond_3
    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public static a(Lorg/json/JSONArray;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "originURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "validStatus"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcn/com/xy/sms/sdk/db/entity/h;->b(Ljava/lang/String;I)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static b(Ljava/lang/String;I)J
    .locals 10

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x6

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "url"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "check_statu"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "check_time"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string/jumbo v5, "tb_msg_url"

    const-string/jumbo v6, "url = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-static {v5, v4, v6, v7}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string/jumbo v5, "tb_msg_url"

    const-string/jumbo v6, "url = ? and check_statu = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "0"

    aput-object v9, v7, v8

    invoke-static {v5, v4, v6, v7}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_0

    const-string/jumbo v0, "tb_msg_url"

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "tb_msg_url"

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveOrUpdate: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_0
.end method

.method public static b()Lorg/json/JSONArray;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/16 v0, 0x1c

    const-wide v4, 0x9a7ec800L

    invoke-static {v0, v4, v5}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    :try_start_0
    const-string/jumbo v0, "tb_msg_url"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "url"

    aput-object v7, v3, v6

    const-string/jumbo v6, "check_time < ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v0, v3, v6, v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "url"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryCheckTimeExpireData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method
