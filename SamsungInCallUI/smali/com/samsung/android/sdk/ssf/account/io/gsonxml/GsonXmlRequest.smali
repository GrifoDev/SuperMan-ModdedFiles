.class public Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;
.super Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/ssf/common/model/CommonRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final BACKOFF_MULT:F = 0.0f

.field private static final MAX_RETRIES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GsonXmlRequest"

.field private static final TIMEOUT_MS:I = 0x2710


# instance fields
.field private mBodyBytes:[B

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mGsonXml:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;

.field private mProtocolContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string v0, "text/xml"

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mProtocolContentType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mClass:Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlParser;->createGson(Z)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mGsonXml:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method

.method private getMethodType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GET"

    goto :goto_0

    :pswitch_1
    const-string v0, "POST"

    goto :goto_0

    :pswitch_2
    const-string v0, "PUT"

    goto :goto_0

    :pswitch_3
    const-string v0, "DELETE"

    goto :goto_0

    :pswitch_4
    const-string v0, "HEAD"

    goto :goto_0

    :pswitch_5
    const-string v0, "OPTIONS"

    goto :goto_0

    :pswitch_6
    const-string v0, "TRACE"

    goto :goto_0

    :pswitch_7
    const-string v0, "PATCH"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mReqWhat:I

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mUserData:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mReqWhat:I

    iget v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mHttpStatusCode:I

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mUserData:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->onResponse(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getBody()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mProtocolContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    iget v0, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mHttpStatusCode:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ELog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GsonXmlRequest"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mGsonXml:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mClass:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Response was null"

    const-string v1, "GsonXmlRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ELog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "body = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GsonXmlRequest"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    const-string v0, "ELog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsonXmlRequest"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBody([BLjava/lang/String;)V
    .locals 1

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mProtocolContentType:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    return-void
.end method

.method public setTimeout(IIF)V
    .locals 1

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlRequest;->getMethodType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
