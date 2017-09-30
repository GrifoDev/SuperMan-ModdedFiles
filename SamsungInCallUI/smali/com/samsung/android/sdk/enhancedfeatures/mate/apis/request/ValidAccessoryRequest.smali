.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;
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
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->rsrc:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->country:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->appVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->mcc:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->csc:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->model:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAccessoryDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ResourceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->rsrc:Ljava/util/List;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerSalesCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->csc:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;->model:Ljava/lang/String;

    return-object v0
.end method
