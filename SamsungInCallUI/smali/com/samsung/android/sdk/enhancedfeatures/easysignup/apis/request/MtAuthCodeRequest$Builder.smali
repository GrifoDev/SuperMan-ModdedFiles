.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCcc:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;->mPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;->mCcc:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;->mType:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$1;)V

    return-object v0
.end method

.method public getCoutryCallingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;->mCcc:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;->mType:I

    return v0
.end method

.method public setCoutryCallingCode(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;->mCcc:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;->mType:I

    return-object p0
.end method
