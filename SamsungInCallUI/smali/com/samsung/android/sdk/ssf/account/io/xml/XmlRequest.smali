.class public Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;
.super Lcom/android/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<",
        "Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XmlRequest"


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mHttpStatusCode:I

.field protected mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

.field protected mToken:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I",
            "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    iput v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mToken:I

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iput v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mHttpStatusCode:I

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mClass:Ljava/lang/Class;

    iput p4, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mToken:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    const-string v0, "Deliver error"

    const-string v1, "XmlRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mToken:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V

    return-void
.end method

.method protected deliverResponse(Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mToken:I

    iget v2, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mHttpStatusCode:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->onResponse(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->deliverResponse(Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget v0, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v0, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mHttpStatusCode:I

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

    const-string v3, "XmlRequest"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlParser;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlParser;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->mClass:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlParser;->parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/android/sdk/ssf/account/io/entry/Entry;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlResponse;-><init>(Ljava/lang/Object;Lcom/android/volley/NetworkResponse;)V

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

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

    :catch_2
    move-exception v0

    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public setTimeout(IIF)V
    .locals 1

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/xml/XmlRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method
