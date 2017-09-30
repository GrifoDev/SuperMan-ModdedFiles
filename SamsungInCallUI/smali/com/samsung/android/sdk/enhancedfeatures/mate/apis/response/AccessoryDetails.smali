.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;
.super Ljava/lang/Object;


# instance fields
.field public MaxRegistrationCount:I

.field protected cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

.field public expired:I

.field public expiryTimeStamp:J

.field public registeredState:I

.field public registrationCount:I

.field protected rsrc_id:Ljava/lang/String;

.field protected rsrc_st:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected ser_no:Ljava/lang/String;

.field protected svc_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpCustomInfo()Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->rsrc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceStatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->rsrc_st:Ljava/util/List;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->ser_no:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->svc_id:I

    return v0
.end method

.method public setCpCustomInfo(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->cp_custm_info:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->rsrc_id:Ljava/lang/String;

    return-void
.end method

.method public setResourceStatus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->rsrc_st:Ljava/util/List;

    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->ser_no:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->svc_id:I

    return-void
.end method
