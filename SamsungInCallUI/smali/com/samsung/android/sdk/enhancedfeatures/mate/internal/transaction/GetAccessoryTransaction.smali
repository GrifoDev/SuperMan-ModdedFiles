.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    new-instance v1, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryReq;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryReq;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryReq;->setResourceId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->getStatusFilter()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->getStatusFilter()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->getStatusFilter()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;

    new-instance v4, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->setAttributeName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->setAttributeValue(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryReq;->setStatusFilter(Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->getApplicationVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->getReqId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;->getUserData()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/accessory/AccessoryManager;->getAccessory(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryReq;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->start()V

    return-void
.end method
