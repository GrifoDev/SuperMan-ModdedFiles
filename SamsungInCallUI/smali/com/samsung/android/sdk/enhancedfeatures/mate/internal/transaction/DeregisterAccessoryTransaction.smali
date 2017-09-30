.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;->getResourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;->getReqId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;->getUserData()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/accessory/AccessoryManager;->deleteAccessory(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->start()V

    return-void
.end method
