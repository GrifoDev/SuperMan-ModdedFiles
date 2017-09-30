.class public Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;
.super Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/ssf/SsfResult;",
        ">",
        "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private typeArgumentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/toolbox/RequestFuture",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->typeArgumentClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method

.method private praseServerError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x2afb

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v2, :cond_0

    const/16 v1, 0x2af8

    iput v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v1, v2, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v1, :cond_5

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->isGZiped(Lcom/android/volley/NetworkResponse;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v2, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/common/util/Compressor;->decompress([B)[B

    move-result-object v4

    new-instance v1, Ljava/lang/String;

    iget-object v5, v2, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-class v0, Lcom/samsung/android/sdk/ssf/social/io/SocialErrorResponse;

    invoke-virtual {v3, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/SocialErrorResponse;

    :cond_1
    iget v1, v2, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/social/io/SocialErrorResponse;->getStatusCode(I)I

    move-result v1

    iput v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/SocialErrorResponse;->getRcode()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/SocialErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v1, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v5, v2, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iput v6, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_1

    :catch_1
    move-exception v0

    iput v6, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_1

    :catch_2
    move-exception v0

    iput v6, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method private updateSsfResult(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 2

    const/16 v1, 0x2af8

    if-nez p1, :cond_1

    iput v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v0, :cond_2

    const/16 v0, 0x2716

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_3

    const/16 v0, 0x2afb

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_4

    const/16 v0, 0x2af9

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v0, :cond_6

    :cond_5
    const/16 v0, 0x2afa

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_7

    iput v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->praseServerError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_0

    const/16 v0, 0x2ee0

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->praseServerError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    goto :goto_0
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->updateSsfResult(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v1, v0}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->updateSsfResult(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onResponse(ILcom/samsung/android/sdk/ssf/SsfResult;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/16 v1, 0x2710

    if-nez p2, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iput v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput p3, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    if-eqz p2, :cond_3

    iput v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_3
    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ssf/social/listener/SocialResponseListener;->onResponse(ILcom/samsung/android/sdk/ssf/SsfResult;ILjava/lang/Object;)V

    return-void
.end method
