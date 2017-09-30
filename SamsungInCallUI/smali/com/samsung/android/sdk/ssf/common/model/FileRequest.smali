.class public Lcom/samsung/android/sdk/ssf/common/model/FileRequest;
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
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Landroid/os/Bundle;IIF)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, p6, p7, p8}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    return-void
.end method

.method private redirectRequest(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest$1;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->getMethod()I

    move-result v2

    iget v4, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mReqWhat:I

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mUserData:Ljava/lang/Object;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest$1;-><init>(Lcom/samsung/android/sdk/ssf/common/model/FileRequest;ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "x-sc-appId"

    const-string v1, "x-sc-appId"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/FileRequest;

    const-string v3, "Range"

    const-string v1, "Range"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/FileRequest;
    :try_end_0
    .catch Lcom/android/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v2, 0x1388

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setTimeout(IIF)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->getProgressWhat()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setProgressWhat(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->getPriorityInt()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setPriorityInt(I)V

    iput-boolean v7, v0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->isFolderORS:Z

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move v0, v7

    :goto_1
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/ssf/common/model/FileRequest",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v2, 0x12e

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "Location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->redirectRequest(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mReqWhat:I

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mUserData:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "deliverError null point error"

    sget-object v2, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mReqWhat:I

    iget v2, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mHttpStatusCode:I

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mUserData:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->onResponse(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    iget v0, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v0, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->mHttpStatusCode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response header = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response data length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method

.method public setTimeout(IIF)V
    .locals 1

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method
