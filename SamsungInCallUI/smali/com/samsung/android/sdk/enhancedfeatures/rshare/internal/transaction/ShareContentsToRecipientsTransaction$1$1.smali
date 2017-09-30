.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;

.field final synthetic val$reqWhat:I

.field final synthetic val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->val$reqWhat:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->getContentToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setContentToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->getExpiredTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setExpiryTime(J)V

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->val$reqWhat:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setRequestToken(Ljava/lang/Long;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->getPushStatus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse$PushStatus;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;-><init>()V

    iget-boolean v5, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse$PushStatus;->need_to_sms:Z

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->setNeedToSms(Z)V

    iget-boolean v5, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse$PushStatus;->pushable:Z

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->setPushable(Z)V

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse$PushStatus;->to_msisdn:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;->setReceiverMsisdn(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->getUserData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setUserData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->setPushStatusList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    return-void
.end method
