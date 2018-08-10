.class public Lcom/samsung/context/sdk/samsunganalytics/a/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/d/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

.field private d:Ljavax/net/ssl/HttpsURLConnection;

.field private e:Landroid/content/SharedPreferences;

.field private f:Lcom/samsung/context/sdk/samsunganalytics/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/context/sdk/samsunganalytics/a/a",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/a/a;Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/context/sdk/samsunganalytics/a/a/a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/samsung/context/sdk/samsunganalytics/a/a",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->e:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->f:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    return-void
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    invoke-static {v5, v4}, Ljava/text/SimpleDateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ts"

    invoke-virtual {v0, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->a:Ljava/lang/String;

    const-string/jumbo v6, "tid"

    invoke-virtual {v4, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/a/e/e;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/a/e/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "hc"

    invoke-virtual {v4, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v3, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "Fail to get Policy"

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "oq-3g"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    const-string/jumbo v3, "oq-3g"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "dq-3g"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    const-string/jumbo v3, "dq-3g"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "oq-w"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    const-string/jumbo v3, "oq-w"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "dq-w"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    const-string/jumbo v3, "dq-w"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dom"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dom"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uri"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "bat-uri"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bat-uri"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "lgt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "lgt"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "rint"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "rint"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "policy_received_date"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dom"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/c;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/b;

    const-string/jumbo v2, "uri"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/b;

    const-string/jumbo v2, "bat-uri"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dq-3g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dq-3g"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dq-w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dq-w"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oq-3g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "oq-3g"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oq-w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "oq-w"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Fail to get Policy"

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GetPolicyClient] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    :goto_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "rc"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x3e8

    if-ne v4, v7, :cond_2

    const-string/jumbo v7, "GetPolicyClient"

    const-string/jumbo v8, "Get Policy Success"

    invoke-static {v7, v8}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "lgt"

    const-string/jumbo v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {p0, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->a(Lorg/json/JSONObject;)V

    :goto_2
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    :goto_3
    invoke-direct {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->a(Ljava/io/BufferedReader;)V

    move-object v0, v1

    :goto_4
    return-void

    :cond_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to get Policy. Response code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_5
    :try_start_3
    const-string/jumbo v7, "Fail to get Policy"

    invoke-static {v7}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->a(Ljava/io/BufferedReader;)V

    goto :goto_4

    :cond_2
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to get Policy; Invalid Message. Result code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->e(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_5

    :cond_3
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->f:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    if-eqz v7, :cond_0

    const-string/jumbo v7, "lgt"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v7, "rtb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->f:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    move-object v0, v1

    :goto_6
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->a(Ljava/io/BufferedReader;)V

    throw v6

    :cond_4
    :try_start_5
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v6

    goto :goto_6
.end method
