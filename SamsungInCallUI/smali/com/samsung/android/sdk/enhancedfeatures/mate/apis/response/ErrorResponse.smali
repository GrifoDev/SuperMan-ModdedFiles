.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;


# instance fields
.field protected resultCode:I

.field protected serverErrorCode:J

.field protected serverErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->resultCode:I

    return v0
.end method

.method public getServerErrorCode()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->serverErrorCode:J

    return-wide v0
.end method

.method public getServerErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->serverErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->resultCode:I

    return-void
.end method

.method public setServerErrorCode(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->serverErrorCode:J

    return-void
.end method

.method public setServerErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->serverErrorMessage:Ljava/lang/String;

    return-void
.end method
