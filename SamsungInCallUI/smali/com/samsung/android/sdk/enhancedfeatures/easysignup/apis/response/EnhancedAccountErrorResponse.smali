.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/internal/common/BaseErrorResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/BaseErrorResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/BaseErrorResponse;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;->setErrorCode(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method
