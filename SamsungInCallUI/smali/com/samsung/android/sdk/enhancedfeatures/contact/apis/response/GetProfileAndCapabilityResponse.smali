.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;
.super Ljava/lang/Object;


# instance fields
.field protected appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected imageContent:[B

.field protected nm:Ljava/lang/String;

.field protected status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->appList:Ljava/util/List;

    return-object v0
.end method

.method public getImageContent()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->imageContent:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->nm:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->appList:Ljava/util/List;

    return-void
.end method

.method public setImageContent([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->imageContent:[B

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->nm:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/GetProfileAndCapabilityResponse;->status:Ljava/lang/String;

    return-void
.end method
