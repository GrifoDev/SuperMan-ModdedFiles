.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;
.super Ljava/lang/Object;


# static fields
.field private static final CONTENT_ID:Ljava/lang/Integer;

.field private static final DOWNLOAD_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GetProfileAndCapabilityTransaction"

.field private static final TOKEN_REQ_PROFILE_CAPABILITY:I = 0x1

.field private static final TOKEN_REQ_PROFILE_IMAGE_DOWNLOAD:I = 0x2


# instance fields
.field private ccc:Ljava/lang/String;

.field private downloadResponse:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

.field private listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;

.field private msisdn:Ljava/lang/String;

.field private ssfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->CONTENT_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->downloadResponse:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->ssfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->ccc:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->msisdn:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->downloadResponse:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->CONTENT_ID:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->ssfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->downloadResponse:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->ccc:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->msisdn:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->ssfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfileAndCapability(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    const/16 v3, 0x753c

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    goto :goto_0
.end method
