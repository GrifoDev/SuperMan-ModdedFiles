.class public Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;
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

    iput v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->HTTP_STATUS_CODE_ERROR:I

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->HTTP_STATUS_CODE_ERROR:I

    const-class v0, Lcom/samsung/android/sdk/ssf/file/FileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method private parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 10

    const/16 v3, 0x2ee0

    const/16 v2, 0x2af9

    const/4 v0, -0x1

    if-nez p1, :cond_0

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v1, :cond_3

    const-string v0, "consume cancel error, this is just for release thread"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2716

    move v1, v0

    :goto_1
    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const-string v0, ""

    if-eqz v4, :cond_19

    iget v5, v4, Lcom/android/volley/NetworkResponse;->statusCode:I

    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v0, ""

    if-eqz v4, :cond_18

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    move-object v4, v0

    :goto_2
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;

    invoke-virtual {v0, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;

    if-eqz v0, :cond_2

    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/16 v8, 0x4a40

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v8, 0xee7142f0L

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    :cond_1
    const/16 v3, 0x2ee1

    :cond_2
    :goto_3
    const/16 v0, 0x1f8

    if-ne v5, v0, :cond_17

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

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->TAG:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x2afa

    move v1, v0

    goto :goto_1

    :cond_6
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_7

    const-string v0, "Timeout Error"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_1

    :cond_7
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_8

    const-string v0, "Server Error"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_1

    :cond_8
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_1a

    const-string v0, "Network Error"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2af8

    move v1, v0

    goto/16 :goto_1

    :cond_9
    :try_start_1
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/16 v8, 0x4e23

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    const/16 v3, -0x10

    goto :goto_3

    :cond_a
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/32 v8, 0x98bd

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    const/16 v3, -0x12

    goto :goto_3

    :cond_b
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/32 v8, 0x98cb

    cmp-long v6, v6, v8

    if-nez v6, :cond_c

    const/16 v3, -0x18

    goto/16 :goto_3

    :cond_c
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/32 v8, 0x98cc

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    const/16 v3, -0x11

    goto/16 :goto_3

    :cond_d
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/32 v8, 0x98cf

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    const/16 v3, -0x14

    goto/16 :goto_3

    :cond_e
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/16 v8, 0x7d08

    cmp-long v6, v6, v8

    if-nez v6, :cond_f

    const/16 v3, -0x1f

    goto/16 :goto_3

    :cond_f
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/16 v8, 0x7d02

    cmp-long v6, v6, v8

    if-nez v6, :cond_10

    const/16 v3, -0x20

    goto/16 :goto_3

    :cond_10
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/32 v8, 0x9a52

    cmp-long v6, v6, v8

    if-nez v6, :cond_11

    const/16 v3, -0x22

    goto/16 :goto_3

    :cond_11
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/32 v8, 0x98cd

    cmp-long v6, v6, v8

    if-nez v6, :cond_12

    const/16 v3, -0x13

    goto/16 :goto_3

    :cond_12
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/32 v8, 0x98d0

    cmp-long v6, v6, v8

    if-nez v6, :cond_13

    const/16 v3, -0x19

    goto/16 :goto_3

    :cond_13
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/32 v8, 0x9887

    cmp-long v6, v6, v8

    if-nez v6, :cond_14

    const/16 v3, -0x25

    goto/16 :goto_3

    :cond_14
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/16 v8, 0x7d06

    cmp-long v6, v6, v8

    if-nez v6, :cond_15

    const/16 v3, -0x26

    goto/16 :goto_3

    :cond_15
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J

    const-wide/32 v8, 0x970fe0

    cmp-long v6, v6, v8

    if-nez v6, :cond_16

    const/16 v3, -0x66

    goto/16 :goto_3

    :cond_16
    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/file/io/FileServerError;->rcode:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/32 v8, 0x9885

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    const/16 v3, -0x27

    goto/16 :goto_3

    :catch_0
    move-exception v0

    iget-object v6, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    move v2, v1

    goto/16 :goto_4

    :cond_18
    move-object v4, v0

    goto/16 :goto_2

    :cond_19
    move v2, v1

    goto/16 :goto_5

    :cond_1a
    move v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->HTTP_STATUS_CODE_ERROR:I

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;-><init>()V

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iput v2, v1, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput v2, v1, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->resultCode:I

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    iput-wide v2, v1, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->serverErrorCode:J

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->serverErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;-><init>()V

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iput v2, v1, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->httpStatusCode:I

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput v2, v1, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->resultCode:I

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    iput-wide v2, v1, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->serverErrorCode:J

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->serverErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;-><init>()V

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iput v2, v1, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput v2, v1, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->resultCode:I

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    iput-wide v2, v1, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->serverErrorCode:J

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->serverErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onProgress(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onProgress(IILjava/lang/Object;)V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->resultCode:I

    check-cast p2, Lcom/android/volley/NetworkResponse;

    iget-object v1, p2, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->setResponse([B)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v1, v0}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    if-ne v0, v1, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    iput p3, v0, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    if-ne v0, v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    iput p3, v0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method
