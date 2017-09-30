.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAuthCode:Ljava/lang/String;

.field private mAuthType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;->mAuthType:I

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;->mAuthCode:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;-><init>(ILjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$1;)V

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;->mAuthType:I

    return v0
.end method

.method public setAuthCode(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;->mAuthCode:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthType(I)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;->mAuthType:I

    return-object p0
.end method
