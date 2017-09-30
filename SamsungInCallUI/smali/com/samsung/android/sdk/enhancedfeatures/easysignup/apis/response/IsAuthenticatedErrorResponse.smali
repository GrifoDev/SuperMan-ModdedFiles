.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/IsAuthenticatedErrorResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;


# instance fields
.field mAuthType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/IsAuthenticatedErrorResponse;->setAuthType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/IsAuthenticatedErrorResponse;->mAuthType:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/IsAuthenticatedErrorResponse;->mAuthType:Ljava/lang/String;

    return-void
.end method
