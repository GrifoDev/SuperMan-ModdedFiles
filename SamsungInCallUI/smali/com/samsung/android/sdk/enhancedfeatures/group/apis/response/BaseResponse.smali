.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;
.super Ljava/lang/Object;


# instance fields
.field protected req_id:I

.field protected user_data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;->req_id:I

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;->user_data:Ljava/lang/Object;

    return-object v0
.end method

.method public setReqId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;->req_id:I

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;->user_data:Ljava/lang/Object;

    return-void
.end method
