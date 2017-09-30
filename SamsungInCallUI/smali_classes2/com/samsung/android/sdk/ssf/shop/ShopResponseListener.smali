.class public Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;
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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->TAG:Ljava/lang/String;

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

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->typeArgumentClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method

.method private updateSsfResult(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "onError. Invalid error."

    sget-object v2, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError. result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError. error.cause: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    instance-of v0, p1, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v0, :cond_1

    const/16 v0, 0x2716

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move-object v1, v2

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_2

    const/16 v0, 0x2af9

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move-object v1, v2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v0, :cond_4

    :cond_3
    const/16 v0, 0x2afa

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move-object v1, v2

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_6

    const/16 v0, 0x2af8

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_5
    :goto_1
    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v3, :cond_7

    const-string v0, "onError. Invalid networkResponse."

    sget-object v1, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_5

    const/16 v0, 0x2ee0

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_1

    :cond_7
    iget v0, v3, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v0, v3, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/String;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError. responseData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    :try_start_0
    const-class v4, Lcom/samsung/android/sdk/ssf/shop/io/ShopErrorResponse;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/shop/io/ShopErrorResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :cond_8
    :goto_3
    iget v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    packed-switch v0, :pswitch_data_0

    :cond_9
    move-object v1, v2

    goto/16 :goto_0

    :pswitch_0
    if-nez v1, :cond_a

    move-object v1, v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/shop/io/ShopErrorResponse;->getRcode()J

    move-result-wide v4

    const-wide v6, 0xee7142f0L

    cmp-long v0, v4, v6

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/shop/io/ShopErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Invalid access_token."

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_b
    const/16 v0, 0x2ee1

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/shop/io/ShopErrorResponse;->getRcode()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/shop/io/ShopErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    move-object v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError. reqWhat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/SsfResult;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->updateSsfResult(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

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

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->updateSsfResult(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 v0, 0x2710

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput p3, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ssf/shop/ShopResponseListener;->onResponse(ILcom/samsung/android/sdk/ssf/SsfResult;ILjava/lang/Object;)V

    return-void
.end method
