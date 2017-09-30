.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private appVersion:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private csc:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private rsrc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ResourceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->rsrc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->csc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->model:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$1;)V

    return-object v0
.end method

.method public setAccessoryDetails(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ResourceInfo;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->rsrc:Ljava/util/List;

    return-object p0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomerSalesCode(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->csc:Ljava/lang/String;

    return-object p0
.end method

.method public setMobileCountryCode(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->mcc:Ljava/lang/String;

    return-object p0
.end method

.method public setModelNumber(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->model:Ljava/lang/String;

    return-object p0
.end method
