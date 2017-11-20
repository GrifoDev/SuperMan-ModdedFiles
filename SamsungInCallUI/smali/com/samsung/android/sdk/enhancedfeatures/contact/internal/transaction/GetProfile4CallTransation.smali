.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;
.super Ljava/lang/Object;


# static fields
.field private static final DOWNLOAD_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_REQ_PROFILE_ORIGINAL_IMAGE:I = 0x1

.field private static final TOKEN_REQ_PROFILE_ORIGINAL_IMAGE_DOWNLOAD:I = 0x2

.field private static final contentId:Ljava/lang/Integer;


# instance fields
.field private ccc:Ljava/lang/String;

.field private listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

.field listner:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private msisdn:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->contentId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->listner:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->ccc:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->msisdn:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->status:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->status:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->contentId:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->ccc:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->msisdn:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->listner:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfileForCall(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    const/16 v3, 0x753c

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    goto :goto_0
.end method
