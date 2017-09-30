.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/UpdateAccessoryListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/UpdateAccessoryListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/UpdateAccessoryListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/ssf/accessory/io/UpdateAccessoryReq;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/UpdateAccessoryReq;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/accessory/io/UpdateAccessoryReq;->setResourceId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->getCpCustomInfo()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->getCpCustomInfo()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;->getCpCustomText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->getCpCustomInfo()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;->getCpCustomText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;->setCpCustomText(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/accessory/io/UpdateAccessoryReq;->setCpCustomInfo(Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;)V

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->getReqId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;->getUserData()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/accessory/AccessoryManager;->updateAccessory(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/accessory/io/UpdateAccessoryReq;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/UpdateAccessoryListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/UpdateAccessoryListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->start()V

    return-void
.end method
