.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$Builder;
    }
.end annotation


# static fields
.field public static final AUTH_TYPE_MT_ACS:I = 0x2

.field public static final AUTH_TYPE_MT_SMS:I = 0x1


# instance fields
.field private mCcc:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;->mPhoneNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;->mCcc:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCoutryCallingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;->mCcc:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/MtAuthCodeRequest;->mType:I

    return v0
.end method
