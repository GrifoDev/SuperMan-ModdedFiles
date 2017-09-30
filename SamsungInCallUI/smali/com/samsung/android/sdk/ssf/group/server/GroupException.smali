.class public Lcom/samsung/android/sdk/ssf/group/server/GroupException;
.super Ljava/io/IOException;


# static fields
.field private static final serialVersionUID:J = 0x993caa01e6f5df7L


# instance fields
.field private detailMessage:Ljava/lang/StringBuilder;

.field private result:Lcom/samsung/android/sdk/ssf/SsfResult;

.field private ssfError:Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->detailMessage:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iput p1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->setInternalMessage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->detailMessage:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->processError(Lcom/android/volley/VolleyError;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->detailMessage:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ResultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget v2, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->ssfError:Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->detailMessage:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ServerErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->ssfError:Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;->getRcode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ServerMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->ssfError:Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->detailMessage:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->getStatusCodeMessage(Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Server error Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->getServerErrorCode()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Server error Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->setInternalMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getStatusCodeMessage(Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;
    .locals 1

    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "IO Error"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Network error"

    goto :goto_0

    :sswitch_1
    const-string v0, "Request is Cancelled"

    goto :goto_0

    :sswitch_2
    const-string v0, "Network Parse Error"

    goto :goto_0

    :sswitch_3
    const-string v0, "Network Timedout"

    goto :goto_0

    :sswitch_4
    const-string v0, "No Network Connection"

    goto :goto_0

    :sswitch_5
    const-string v0, "Internal Server Error"

    goto :goto_0

    :sswitch_6
    const-string v0, "Parameter required"

    goto :goto_0

    :sswitch_7
    const-string v0, "Header Missing"

    goto :goto_0

    :sswitch_8
    const-string v0, "Header Bad Format"

    goto :goto_0

    :sswitch_9
    const-string v0, "Request Body Bad Format"

    goto :goto_0

    :sswitch_a
    const-string v0, "Bad JSON format"

    goto :goto_0

    :sswitch_b
    const-string v0, "Parameter Bad format"

    goto :goto_0

    :sswitch_c
    const-string v0, "Invalid phone number"

    goto :goto_0

    :sswitch_d
    const-string v0, "Invalid Group ID"

    goto :goto_0

    :sswitch_e
    const-string v0, "Invalid Group Type"

    goto :goto_0

    :sswitch_f
    const-string v0, "Exceeds the limit"

    goto :goto_0

    :sswitch_10
    const-string v0, "Push request failed"

    goto :goto_0

    :sswitch_11
    const-string v0, "Accessing member DB failed"

    goto :goto_0

    :sswitch_12
    const-string v0, "Invalid action response"

    goto :goto_0

    :sswitch_13
    const-string v0, "Invalid member ID"

    goto :goto_0

    :sswitch_14
    const-string v0, "Already accepted"

    goto :goto_0

    :sswitch_15
    const-string v0, "Accessing group DB failed"

    goto :goto_0

    :sswitch_16
    const-string v0, "Internal server error"

    goto :goto_0

    :sswitch_17
    const-string v0, "Unregistered user"

    goto :goto_0

    :sswitch_18
    const-string v0, "Invalid access_token."

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xce -> :sswitch_17
        -0xcd -> :sswitch_16
        -0x7a -> :sswitch_18
        -0x79 -> :sswitch_15
        -0x73 -> :sswitch_14
        -0x72 -> :sswitch_13
        -0x71 -> :sswitch_12
        -0x70 -> :sswitch_11
        -0x6f -> :sswitch_10
        -0x6e -> :sswitch_f
        -0x6d -> :sswitch_e
        -0x6c -> :sswitch_d
        -0x6b -> :sswitch_c
        -0x6a -> :sswitch_b
        -0x69 -> :sswitch_a
        -0x68 -> :sswitch_9
        -0x67 -> :sswitch_8
        -0x66 -> :sswitch_7
        -0x65 -> :sswitch_6
        0x2716 -> :sswitch_1
        0x2af8 -> :sswitch_0
        0x2af9 -> :sswitch_3
        0x2afa -> :sswitch_4
        0x2afb -> :sswitch_2
        0x2ee0 -> :sswitch_5
    .end sparse-switch
.end method

.method private processError(Lcom/android/volley/VolleyError;)V
    .locals 6

    const/16 v5, 0x2afb

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, p1, Lcom/android/volley/ParseError;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iput v5, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->setInternalMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    const/16 v1, 0x2716

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->setInternalMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lcom/android/volley/TimeoutError;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    const/16 v1, 0x2af9

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->setInternalMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v2, p1, Lcom/android/volley/NoConnectionError;

    if-nez v2, :cond_5

    instance-of v2, p1, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    const/16 v1, 0x2afa

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->setInternalMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v2, p1, Lcom/android/volley/NetworkError;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    const/16 v3, 0x2af8

    iput v3, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_7
    :goto_1
    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v3, :cond_8

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->isGZiped(Lcom/android/volley/NetworkResponse;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v2, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/common/util/Compressor;->decompress([B)[B

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_8
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-class v3, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->ssfError:Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget v1, v2, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->ssfError:Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->ssfError:Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget v2, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;->getStatusCode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->ssfError:Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;->getRcode()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->ssfError:Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->setInternalMessage(Ljava/lang/String;)V

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iput v5, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto/16 :goto_0

    :cond_b
    instance-of v2, p1, Lcom/android/volley/ServerError;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    const/16 v3, 0x2ee0

    iput v3, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_1

    :cond_c
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v3, v2, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, v2, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->setInternalMessage(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->setInternalMessage(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private setInternalMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->detailMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    return v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->detailMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerErrorCode()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-wide v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    return-wide v0
.end method

.method public getServerErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    return-object v0
.end method
