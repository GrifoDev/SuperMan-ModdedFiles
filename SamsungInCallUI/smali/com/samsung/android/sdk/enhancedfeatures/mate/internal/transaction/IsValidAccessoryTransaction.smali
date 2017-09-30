.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/ValidAccessoryListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/ValidAccessoryListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/ValidAccessoryListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 10

    new-instance v1, Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getAccessoryDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getAccessoryDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getAccessoryDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ResourceInfo;

    new-instance v4, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ResourceInfo;->getServiceId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;->setServiceId(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ResourceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfoDetails;->setSerialNo(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;->setAccessoryDetails(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ServerUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;->setUniqueID(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getApplicationVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getMobileCountryCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getCountry()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getCustomerSalesCode()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getModelNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getReqId()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->getUserData()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/sdk/ssf/accessory/AccessoryManager;->isValidAccessory(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/ValidAccessoryListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/ValidAccessoryListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->start()V

    return-void
.end method
