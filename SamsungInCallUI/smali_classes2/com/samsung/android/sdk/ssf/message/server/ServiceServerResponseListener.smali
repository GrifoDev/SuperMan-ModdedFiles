.class public Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;
.super Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError. reqWhat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, "onError. Invalid error."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError. result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v2, p1, v1, v0, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError. error.cause: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v0, :cond_1

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

    const/16 v0, 0x2af8

    iput v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_5
    :goto_1
    iget-object v3, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v3, :cond_7

    const-string v0, "onError. Invalid networkResponse."

    sget-object v3, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lcom/android/volley/ServerError;

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

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    :try_start_0
    const-class v4, Lcom/samsung/android/sdk/ssf/message/io/ServiceServerError;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/ServiceServerError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget v3, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    packed-switch v3, :pswitch_data_0

    :cond_8
    :goto_4
    move-object v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :pswitch_0
    if-nez v0, :cond_9

    move-object v0, v2

    goto/16 :goto_0

    :cond_9
    iget-wide v4, v0, Lcom/samsung/android/sdk/ssf/message/io/ServiceServerError;->rcode:J

    const-wide v6, 0xee7142f0L

    cmp-long v3, v4, v6

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/message/io/ServiceServerError;->rmsg:Ljava/lang/String;

    const-string v4, "Invalid access_token."

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_a
    const/16 v3, 0x2ee1

    iput v3, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iget-wide v4, v0, Lcom/samsung/android/sdk/ssf/message/io/ServiceServerError;->rcode:J

    iput-wide v4, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/message/io/ServiceServerError;->rmsg:Ljava/lang/String;

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    goto :goto_4

    :cond_b
    move-object v0, v1

    goto :goto_3

    :cond_c
    move-object v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse. reqWhat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpStatusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    packed-switch p1, :pswitch_data_0

    const-string v0, "onResponse. Unknown response."

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse;

    if-eqz p2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse;->getChatidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;->getChatid()J

    move-result-wide v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onResponse. Invalid msisdn. Skip it."

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    const-string v0, "onResponse. No such user."

    sget-object v5, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResponse. msisdn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-direct {v0, v6, v7, v4}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, v2, v1, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, v2, v1, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Lcom/samsung/android/sdk/ssf/message/io/GetMsisdnResponse;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/GetMsisdnResponse;->getMsisdnList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/message/io/GetMsisdnResponse;->msisdnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;->getChatid()J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-nez v0, :cond_4

    const-string v0, "onResponse. Invalid duid. Skip it."

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "onResponse. No such user."

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse. duid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/User;

    invoke-direct {v0, v6, v7, v4}, Lcom/samsung/android/sdk/ssf/message/io/User;-><init>(JLjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, v2, v1, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, v2, v1, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    check-cast p2, Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse. Get ChatId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getChatid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse. Get Key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getGpbauthkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse. Get Gpbauthkey: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getGpbauthkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getExpiredkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse. Get Expiredkey: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getExpiredkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, v2, v1, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz p2, :cond_e

    check-cast p2, [Lcom/samsung/android/sdk/ssf/message/io/GetPublicKeyResp;

    check-cast p2, [Lcom/samsung/android/sdk/ssf/message/io/GetPublicKeyResp;

    array-length v0, p2

    new-array v2, v0, [Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;

    const/4 v0, 0x0

    :goto_3
    array-length v3, p2

    if-ge v0, v3, :cond_d

    new-instance v3, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;

    aget-object v4, p2, v0

    iget-object v4, v4, Lcom/samsung/android/sdk/ssf/message/io/GetPublicKeyResp;->chatid:Ljava/lang/String;

    aget-object v5, p2, v0

    iget-object v5, v5, Lcom/samsung/android/sdk/ssf/message/io/GetPublicKeyResp;->publickey:Ljava/lang/String;

    aget-object v6, p2, v0

    iget-object v6, v6, Lcom/samsung/android/sdk/ssf/message/io/GetPublicKeyResp;->signkey:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;->getPublickey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse. Get public Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;->getPublickey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;->getSignkey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse. Get sign key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/message/io/PublicKeySet;->getSignkey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, v2, v1, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, v2, v1, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
