.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;
.super Lcom/samsung/context/sdk/samsunganalytics/a/f/a;
.source "Unknown"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method

.method private a(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "wifi_used"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "wifi_used"

    add-int/2addr v1, p2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "data_used"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "data_used"

    add-int/2addr v1, p2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "quota_reset_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

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

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(II)V

    return-void
.end method

.method private b()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_0
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NETWORK_UNAVAILABLE:I

    return v0
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pkn"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "dm"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    const-string/jumbo v1, "uv"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/a/a;Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    return-void

    :cond_0
    const-string/jumbo v1, "mcc"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "mnc"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private c()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "quota_reset_date"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "rint"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "policy_received_date"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b(Landroid/content/SharedPreferences;)V

    goto :goto_1
.end method


# virtual methods
.method public a(ILjava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eq p1, v7, :cond_0

    if-eqz p1, :cond_1

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Quota : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/ Uploaded : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/ limit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/ size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    add-int/2addr v2, v4

    if-lt v3, v2, :cond_2

    if-lt v0, v4, :cond_3

    invoke-direct {p0, p1, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(II)V

    return v7

    :cond_0
    const-string/jumbo v2, "dq-w"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v2, "wifi_used"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "oq-w"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "dq-3g"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v2, "data_used"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "oq-3g"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "DLS Sender"

    const-string/jumbo v2, "send result fail : Over daily quota"

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const-string/jumbo v0, "DLS Sender"

    const-string/jumbo v2, "send result fail : Over once quota"

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public c(Ljava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c(Ljava/util/Map;)I

    move-result v0

    sget v1, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_USER_NOT_AGREE:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b()I

    move-result v1

    sget v2, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NETWORK_UNAVAILABLE:I

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c()V

    sget v2, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NO_DEVICE_ID:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v2, ""

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;I)V

    :goto_0
    if-nez v0, :cond_3

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NONE:I

    return v0

    :cond_0
    return v0

    :cond_1
    const-string/jumbo v0, "DLS Sender"

    const-string/jumbo v1, "Network unavailable."

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NETWORK_UNAVAILABLE:I

    return v0

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;

    sget-object v5, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v6}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V

    invoke-interface {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_4
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_QUOTA_EXCEED:I

    return v0
.end method
