.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/d/b;


# static fields
.field private static final a:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

.field private static final b:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;


# instance fields
.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

.field private f:Ljava/lang/String;

.field private g:Ljavax/net/ssl/HttpsURLConnection;

.field private i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->c()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->d:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u000e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 9

    :try_start_0
    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd\'T\'HH:mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "ts"

    invoke-virtual {v1, v6, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->f:Ljava/lang/String;

    const-string/jumbo v8, "tid"

    invoke-virtual {v6, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/context/sdk/samsunganalytics/a/e/e;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/context/sdk/samsunganalytics/a/e/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "hc"

    invoke-virtual {v6, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v3, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->a()Lcom/samsung/context/sdk/samsunganalytics/a/f/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v8, "Content-Encoding"

    if-nez v6, :cond_1

    const-string/jumbo v6, "text"

    :goto_1
    invoke-virtual {v7, v8, v6}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v7, 0x7d0

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[DLS Client] Send to DLS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v6, "gzip"

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v6, "[DLS Client] Send fail."

    invoke-static {v6}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->e(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[DLS Client] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
