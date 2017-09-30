.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/notification/GetNotificationListener;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/notification/GetNotificationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/notification/GetNotificationListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mReqId:I

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mUserData:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->getNotification(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/notification/GetNotificationListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/notification/GetNotificationListener;

    if-nez p2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mReqId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mUserData:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->start()V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;->getReqId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mReqId:I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;->getUserData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->mUserData:Ljava/lang/Object;

    goto :goto_0
.end method
