.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->getServiceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->setServiceId(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->getContentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->setContentVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->setLang(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->getReqId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;->getUserData()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/accessory/AccessoryManager;->getInitialContent(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->start()V

    return-void
.end method
