.class public Lcom/cmcc/sso/sdk/util/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field public static APK_REQUEST_IP:Ljava/lang/String; = null

.field private static final CONNECT_TIMEOUT_TIME:I = 0x4e20

.field private static final SO_TIMEOUT_TIME:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "http://wap.cmpassport.com:8080/client/queryVersion"

    sput-object v0, Lcom/cmcc/sso/sdk/util/HttpUtil;->APK_REQUEST_IP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGetRequest(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p0, "httpGet"    # Lorg/apache/http/client/methods/HttpGet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x4e20

    .line 28
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 29
    .local v1, "params":Lorg/apache/http/params/BasicHttpParams;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 31
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 33
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.connection.timeout"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 35
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 37
    invoke-interface {v0, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public static getLatestAPKUri()Ljava/lang/String;
    .locals 6

    .prologue
    .line 42
    const-string v4, ""

    .line 45
    .local v4, "uri":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    sget-object v5, Lcom/cmcc/sso/sdk/util/HttpUtil;->APK_REQUEST_IP:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/HttpUtil;->doGetRequest(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 47
    .local v2, "response":Lorg/apache/http/HttpResponse;
    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 50
    .local v3, "responseCode":I
    const/16 v5, 0xc8

    if-ne v5, v3, :cond_0

    .line 52
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmcc/sso/sdk/util/HttpUtil;->parseResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 66
    .end local v1    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "responseCode":I
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    :goto_0
    return-object v4

    .line 56
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_0
    move-exception v0

    .line 59
    .restart local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, ""

    .line 78
    .local v1, "uri":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "apkUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v2

    goto :goto_0
.end method
