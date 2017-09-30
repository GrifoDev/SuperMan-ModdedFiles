.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private lang:Ljava/lang/String;

.field private req_ver:Ljava/lang/String;

.field private svc_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->svc_id:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->req_ver:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->lang:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;)V

    return-object v0
.end method

.method public setContentVersion(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->req_ver:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceId(I)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest$Builder;->svc_id:I

    return-object p0
.end method
