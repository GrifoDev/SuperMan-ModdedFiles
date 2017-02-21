.class public Landroid/webkit/WebResourceResponse;
.super Ljava/lang/Object;
.source "WebResourceResponse.java"


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mImmutable:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mResponseHeaders:Ljava/util/Map;
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

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {p0, p3, p4}, Landroid/webkit/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    invoke-virtual {p0, p5}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/webkit/WebResourceResponse;->mImmutable:Z

    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    iput p4, p0, Landroid/webkit/WebResourceResponse;->mStatusCode:I

    iput-object p5, p0, Landroid/webkit/WebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    iput-object p6, p0, Landroid/webkit/WebResourceResponse;->mResponseHeaders:Ljava/util/Map;

    iput-object p7, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method private checkImmutable()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkit/WebResourceResponse;->mImmutable:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This WebResourceResponse instance is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mResponseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Landroid/webkit/WebResourceResponse;->mStatusCode:I

    return v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    if-eqz p1, :cond_0

    const-class v0, Ljava/io/StringBufferInputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "StringBufferInputStream is deprecated and must not be passed to a WebResourceResponse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mResponseHeaders:Ljava/util/Map;

    return-void
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Landroid/webkit/WebResourceResponse;->checkImmutable()V

    const/16 v2, 0x64

    if-ge p1, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "statusCode can\'t be less than 100."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/16 v2, 0x257

    if-le p1, v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "statusCode can\'t be greater than 599."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/16 v2, 0x12b

    if-le p1, v2, :cond_2

    const/16 v2, 0x190

    if-ge p1, v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "statusCode can\'t be in the [300, 399] range."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "reasonPhrase can\'t be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "reasonPhrase can\'t be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "reasonPhrase can\'t contain non-ASCII characters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iput p1, p0, Landroid/webkit/WebResourceResponse;->mStatusCode:I

    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method
