.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetAccessoryResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;


# instance fields
.field protected rsrc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;",
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
.method public getAccessoryDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetAccessoryResponse;->rsrc:Ljava/util/List;

    return-object v0
.end method

.method public setAccessoryDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetAccessoryResponse;->rsrc:Ljava/util/List;

    return-void
.end method
