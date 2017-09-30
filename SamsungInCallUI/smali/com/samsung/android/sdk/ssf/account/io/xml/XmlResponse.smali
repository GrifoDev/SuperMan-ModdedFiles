.class public Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "XmlResponse"


# instance fields
.field private error:Lcom/android/volley/VolleyError;

.field private httpResultCode:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

.field private httpResultObject:Ljava/lang/Object;

.field private networkResponse:Lcom/android/volley/NetworkResponse;


# direct methods
.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->SUCCESS:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->setHttpResultCode(Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->parseError()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->httpResultObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->parseResponse()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    invoke-virtual {v0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHttpResultCode()Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->httpResultCode:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    return-object v0
.end method

.method public getHttpResultObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->httpResultObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final parseError()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    invoke-virtual {v0}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlResponse"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    instance-of v0, v0, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->NO_CONNECTION:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->setHttpResultCode(Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->ERROR:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->setHttpResultCode(Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v1, v1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v2, v2, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XmlResponse"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/samsung/android/sdk/ssf/account/io/entry/ErrorResp;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->setHttpResultObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    goto :goto_0
.end method

.method protected final parseResponse()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->NO_CONTENT:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->httpResultCode:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;->SUCCESS:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->httpResultCode:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    goto :goto_0
.end method

.method public setHttpResultCode(Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->httpResultCode:Lcom/samsung/android/sdk/ssf/account/io/HttpResultCode;

    return-void
.end method

.method public setHttpResultObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;->httpResultObject:Ljava/lang/Object;

    return-void
.end method
