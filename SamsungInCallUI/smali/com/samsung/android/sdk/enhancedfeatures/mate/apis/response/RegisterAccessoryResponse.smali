.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;


# instance fields
.field protected cp_svc_id:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->cp_svc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->rsrc_id:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->rsrc_st:Ljava/util/List;

    return-object v0
.end method

.method public setCpServiceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->cp_svc_id:Ljava/lang/String;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->rsrc_id:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->rsrc_st:Ljava/util/List;

    return-void
.end method
