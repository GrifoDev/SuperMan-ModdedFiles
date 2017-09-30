.class Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method

.method private setDownloadResponse(Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->setStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;->getAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->getSvcId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;->setServiceId(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->setAppList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 8

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "Get profile and Capability success."

    const-string v1, "GetProfileAndCapabilityTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->setDownloadResponse(Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;->getImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$100()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileCallScreen;->getImage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>()V

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->downloadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "profile image download success,"

    const-string v1, "GetProfileAndCapabilityTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/android/volley/NetworkResponse;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    move-result-object v0

    iget-object v1, p2, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->setImageContent([B)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
