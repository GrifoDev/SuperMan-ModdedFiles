.class public Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;
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
.field protected TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    const-class v0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/sdk/ssf/group/GroupManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method private parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 8

    const/16 v3, 0x2ee0

    const/16 v2, 0x2af9

    const/4 v0, -0x1

    if-nez p1, :cond_0

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v1, :cond_2

    const-string v0, "consume cancel error, this is just for release thread"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2716

    move v1, v0

    :goto_1
    iget-object v5, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const-string v0, ""

    const/4 v4, 0x0

    if-eqz v5, :cond_c

    iget v6, v5, Lcom/android/volley/NetworkResponse;->statusCode:I

    iget-object v5, v5, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v0, ""

    if-eqz v5, :cond_b

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    move-object v5, v0

    :goto_2
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-class v4, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    invoke-virtual {v0, v5, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;->getStatusCode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    :goto_4
    const/16 v0, 0x1f8

    if-ne v6, v0, :cond_9

    :goto_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "HTTP ERROR [%d : %s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    int-to-long v4, v3

    iput-wide v4, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    iput v2, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput-object v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/volley/NoConnectionError;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x2afa

    move v1, v0

    goto :goto_1

    :cond_5
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_6

    const-string v0, "Timeout Error"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_6
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_7

    const-string v0, "Server Error"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_1

    :cond_7
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_8

    const-string v0, "Network Error"

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2af8

    move v1, v0

    goto/16 :goto_1

    :cond_8
    instance-of v1, p1, Lcom/android/volley/ParseError;

    if-eqz v1, :cond_d

    const/16 v0, 0x2afb

    move v1, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move v2, v1

    goto :goto_5

    :cond_a
    move-object v0, v4

    goto/16 :goto_3

    :cond_b
    move-object v5, v0

    goto/16 :goto_2

    :cond_c
    move v2, v1

    goto :goto_6

    :cond_d
    move v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iget-object v1, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    return-void
.end method

.method public onProgress(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onProgress(IILjava/lang/Object;)V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 2
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

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    return-void
.end method
