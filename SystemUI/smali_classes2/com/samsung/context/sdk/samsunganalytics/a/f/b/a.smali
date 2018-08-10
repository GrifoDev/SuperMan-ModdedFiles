.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;
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
            "Lcom/samsung/context/sdk/samsunganalytics/a/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

.field private f:Ljava/lang/String;

.field private g:Ljavax/net/ssl/HttpsURLConnection;

.field private h:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

.field private i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/d;Ljava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->i:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->h:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;Ljava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/f/d;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/context/sdk/samsunganalytics/a/d/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->i:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljava/util/Queue;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->h:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->i:Ljava/lang/Boolean;

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->h:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    if-eqz v1, :cond_1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->h:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/d/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "1000"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->h:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/d/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

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
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private c()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->d:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u000e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c()Ljava/lang/String;

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
    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

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

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->f:Ljava/lang/String;

    const-string/jumbo v8, "tid"

    invoke-virtual {v6, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->f:Ljava/lang/String;

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

    iput-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v8, "Content-Encoding"

    if-nez v6, :cond_1

    const-string/jumbo v6, "text"

    :goto_1
    invoke-virtual {v7, v8, v6}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v7, 0x7d0

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->c()Ljava/lang/String;

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

    invoke-static {v6}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v6, "gzip"

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

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

    invoke-static {v6}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->e(Ljava/lang/String;)V

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

    invoke-static {v6}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public b()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->g:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "rc"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[DLS Sender] send result fail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v2, v5}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a(Ljava/io/BufferedReader;)V

    move-object v0, v1

    :goto_1
    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v7, "1000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[DLS Sender] send result success : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v1

    :goto_2
    :try_start_3
    const-string/jumbo v7, "[DLS Client] Send fail."

    invoke-static {v7}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->e(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[DLS Client] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    const-string/jumbo v7, ""

    const/4 v8, 0x0

    invoke-direct {p0, v8, v7}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a(Ljava/io/BufferedReader;)V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;->a(Ljava/io/BufferedReader;)V

    throw v6

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2
.end method
