.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;->getSeen()Z

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->mReqId:I

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->mUserData:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->updateNotification(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->start()V

    return-void
.end method
