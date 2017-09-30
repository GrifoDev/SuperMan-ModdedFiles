.class public Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;
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


# instance fields
.field protected HTTP_STATUS_CODE_ERROR:I

.field protected TAG:Ljava/lang/String;

.field private typeArgumentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V
    .locals 1
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

    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->HTTP_STATUS_CODE_ERROR:I

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->HTTP_STATUS_CODE_ERROR:I

    const-class v0, Lcom/samsung/android/sdk/ssf/file/FileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method private parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 12

    const-wide v10, 0xee7142f0L

    const/16 v3, 0x2ee0

    const/16 v2, 0x2af9

    const/4 v0, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v1, :cond_3

    const-string v0, "consume cancel error, this is just for release thread"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2716

    move v1, v0

    :goto_1
    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const-string v0, ""

    if-eqz v4, :cond_27

    iget v5, v4, Lcom/android/volley/NetworkResponse;->statusCode:I

    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v0, ""

    if-eqz v4, :cond_26

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    move-object v4, v0

    :goto_2
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;

    invoke-virtual {v0, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;

    if-eqz v0, :cond_2

    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide/16 v8, 0x4a40

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v6, v10

    if-nez v6, :cond_9

    :cond_1
    const/16 v3, 0x2ee1

    :cond_2
    :goto_3
    const/16 v0, 0x1f8

    if-ne v5, v0, :cond_25

    :goto_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "HTTP ERROR [%d : %s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    int-to-long v4, v3

    iput-wide v4, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    iput v2, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput-object v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/android/volley/NoConnectionError;

    if-nez v1, :cond_4

    instance-of v1, p1, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v1, :cond_6

    :cond_4
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x2afa

    move v1, v0

    goto :goto_1

    :cond_6
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_7

    const-string v0, "Timeout Error"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_7
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_8

    const-string v0, "Server Error"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_1

    :cond_8
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_28

    const-string v0, "Network Error"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2af8

    move v1, v0

    goto/16 :goto_1

    :cond_9
    :try_start_1
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3938L

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    const/16 v3, -0x29

    goto :goto_3

    :cond_a
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3939L

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    const/16 v3, -0x2a

    goto/16 :goto_3

    :cond_b
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e393aL

    cmp-long v6, v6, v8

    if-nez v6, :cond_c

    const/16 v3, -0x2b

    goto/16 :goto_3

    :cond_c
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e393eL

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    const/16 v3, -0x2c

    goto/16 :goto_3

    :cond_d
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3940L

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    const/16 v3, -0x2d

    goto/16 :goto_3

    :cond_e
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_f

    const/16 v3, -0x2e

    goto/16 :goto_3

    :cond_f
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3931L

    cmp-long v6, v6, v8

    if-nez v6, :cond_10

    const/16 v3, -0x2f

    goto/16 :goto_3

    :cond_10
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xf75f0aa9L

    cmp-long v6, v6, v8

    if-nez v6, :cond_11

    const/16 v3, -0x12

    goto/16 :goto_3

    :cond_11
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e393dL

    cmp-long v6, v6, v8

    if-nez v6, :cond_12

    const/16 v3, -0x31

    goto/16 :goto_3

    :cond_12
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3941L

    cmp-long v6, v6, v8

    if-nez v6, :cond_13

    const/16 v3, -0x32

    goto/16 :goto_3

    :cond_13
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3942L

    cmp-long v6, v6, v8

    if-nez v6, :cond_14

    const/16 v3, -0x33

    goto/16 :goto_3

    :cond_14
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3947L

    cmp-long v6, v6, v8

    if-nez v6, :cond_15

    const/16 v3, -0x34

    goto/16 :goto_3

    :cond_15
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e394bL

    cmp-long v6, v6, v8

    if-nez v6, :cond_16

    const/16 v3, -0x35

    goto/16 :goto_3

    :cond_16
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e394eL

    cmp-long v6, v6, v8

    if-nez v6, :cond_17

    const/16 v3, -0x36

    goto/16 :goto_3

    :cond_17
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e392bL

    cmp-long v6, v6, v8

    if-nez v6, :cond_18

    const/16 v3, -0x37

    goto/16 :goto_3

    :cond_18
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e392cL

    cmp-long v6, v6, v8

    if-nez v6, :cond_19

    const/16 v3, -0x38

    goto/16 :goto_3

    :cond_19
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3930L

    cmp-long v6, v6, v8

    if-nez v6, :cond_1a

    const/16 v3, -0x39

    goto/16 :goto_3

    :cond_1a
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e393bL

    cmp-long v6, v6, v8

    if-nez v6, :cond_1b

    const/16 v3, -0x3a

    goto/16 :goto_3

    :cond_1b
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3936L

    cmp-long v6, v6, v8

    if-nez v6, :cond_1c

    const/16 v3, -0x3b

    goto/16 :goto_3

    :cond_1c
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3944L

    cmp-long v6, v6, v8

    if-nez v6, :cond_1d

    const/16 v3, -0x3c

    goto/16 :goto_3

    :cond_1d
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3949L

    cmp-long v6, v6, v8

    if-nez v6, :cond_1e

    const/16 v3, -0x3d

    goto/16 :goto_3

    :cond_1e
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e394aL

    cmp-long v6, v6, v8

    if-nez v6, :cond_1f

    const/16 v3, -0x3e

    goto/16 :goto_3

    :cond_1f
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3929L

    cmp-long v6, v6, v8

    if-nez v6, :cond_20

    const/16 v3, -0x3f

    goto/16 :goto_3

    :cond_20
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e392aL

    cmp-long v6, v6, v8

    if-nez v6, :cond_21

    const/16 v3, -0x40

    goto/16 :goto_3

    :cond_21
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3945L

    cmp-long v6, v6, v8

    if-nez v6, :cond_22

    const/16 v3, -0x41

    goto/16 :goto_3

    :cond_22
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xee6e3946L

    cmp-long v6, v6, v8

    if-nez v6, :cond_23

    const/16 v3, -0x42

    goto/16 :goto_3

    :cond_23
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v8, 0xf16929a9L

    cmp-long v6, v6, v8

    if-nez v6, :cond_24

    const/16 v3, -0x43

    goto/16 :goto_3

    :cond_24
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide v8, 0xee6e3933L

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    const/16 v3, -0x44

    goto/16 :goto_3

    :catch_0
    move-exception v0

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_25
    move v2, v1

    goto/16 :goto_4

    :cond_26
    move-object v4, v0

    goto/16 :goto_2

    :cond_27
    move v2, v1

    goto/16 :goto_5

    :cond_28
    move v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->HTTP_STATUS_CODE_ERROR:I

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v1, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onProgress(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onProgress(IILjava/lang/Object;)V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0x2710

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_3

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1, v2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method
