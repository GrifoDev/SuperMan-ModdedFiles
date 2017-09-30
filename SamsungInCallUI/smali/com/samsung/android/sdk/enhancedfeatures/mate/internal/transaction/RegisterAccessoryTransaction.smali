.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;


# instance fields
.field private final APP_VERSION_NONE:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    const-string v0, "none"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->APP_VERSION_NONE:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 10

    const/4 v4, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->getCpServiceId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->setServiceId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->setSerialNo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->getCpCustomInfo()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->getCpCustomInfo()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;->getCpCustomText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->getCpCustomInfo()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;->getCpCustomText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;->setCpCustomText(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->setCpCustomInfo(Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "none"

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ServerUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->setDeviceID(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getMCC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->getReqId()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;->getUserData()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/sdk/ssf/accessory/AccessoryManager;->registerAccessory(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->start()V

    return-void
.end method
