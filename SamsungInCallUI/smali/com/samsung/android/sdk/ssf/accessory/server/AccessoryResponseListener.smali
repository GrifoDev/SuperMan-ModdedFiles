.class public Lcom/samsung/android/sdk/ssf/accessory/server/AccessoryResponseListener;
.super Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 7

    const/16 v5, 0x2af8

    const/4 v1, 0x0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/accessory/server/AccessoryResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v2, p1, v1, v0, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v0, :cond_1

    const/16 v0, 0x2716

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move-object v0, v2

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_2

    const/16 v0, 0x2af9

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move-object v0, v2

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/android/volley/NoConnectionError;

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v0, :cond_4

    :cond_3
    const/16 v0, 0x2afa

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move-object v0, v2

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_6

    iput v5, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_5
    :goto_2
    iget-object v4, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v4, :cond_7

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput v5, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/accessory/server/AccessoryResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v2, p1, v1, v0, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    instance-of v0, p2, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_5

    const/16 v0, 0x2ee0

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_2

    :cond_7
    iget-object v0, v4, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_9

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v5, v4, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v6, "UTF-8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget v4, v4, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v4, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    :try_start_1
    const-class v4, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    :cond_8
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "MateLog"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "MateLog"

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object v0, v1

    goto :goto_4
.end method

.method public onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0x2710

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/accessory/server/AccessoryResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1, v2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/accessory/server/AccessoryResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method
