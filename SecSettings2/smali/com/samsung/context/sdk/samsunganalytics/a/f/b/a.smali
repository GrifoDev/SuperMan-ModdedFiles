.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/d/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

.field private d:Ljavax/net/ssl/HttpsURLConnection;

.field private e:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ts"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "tid"

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "hc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    const-string/jumbo v1, "Content-Length"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Analytics Api:run"

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "rc"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Analytics Api:finish"

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/d/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3

    :try_start_1
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/d/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/d/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
