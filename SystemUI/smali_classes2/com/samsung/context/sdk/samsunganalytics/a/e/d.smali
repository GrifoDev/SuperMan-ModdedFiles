.class public Lcom/samsung/context/sdk/samsunganalytics/a/e/d;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_1

    :goto_0
    sub-int v3, v0, v1

    return v3

    :cond_0
    const-string/jumbo v3, "dq-w"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "wifi_used"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    goto :goto_0

    :cond_1
    const-string/jumbo v3, "dq-3g"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "data_used"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/context/sdk/samsunganalytics/a/b/a;",
            "Lcom/samsung/context/sdk/samsunganalytics/Configuration;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pkn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mcc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mnc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/d/c;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/d/c;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/d/c;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V
    .locals 6

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p3, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Ljava/util/Map;

    move-result-object v3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/a/a;Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V

    invoke-interface {p2, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x7

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "quota_reset_date"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "data_used"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wifi_used"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "quota_reset_date"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "rint"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "policy_received_date"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_0
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_1
    return v5
.end method

.method public static a(Landroid/content/Context;II)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eq p1, v7, :cond_0

    if-eqz p1, :cond_1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Quota : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ Uploaded : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    add-int v4, v1, p2

    if-lt v0, v4, :cond_2

    if-lt v2, p2, :cond_3

    return v7

    :cond_0
    const-string/jumbo v4, "dq-w"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "wifi_used"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "oq-w"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_1
    goto :goto_0

    :cond_1
    const-string/jumbo v4, "dq-3g"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "data_used"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "oq-3g"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "DLS Sender"

    const-string/jumbo v5, "send result fail : Over daily quota"

    invoke-static {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_3
    const-string/jumbo v4, "DLS Sender"

    const-string/jumbo v5, "send result fail : Over once quota"

    invoke-static {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public static b(Landroid/content/Context;II)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "wifi_used"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int v3, v1, p2

    const-string/jumbo v4, "wifi_used"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "data_used"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int v3, v1, p2

    const-string/jumbo v4, "data_used"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
