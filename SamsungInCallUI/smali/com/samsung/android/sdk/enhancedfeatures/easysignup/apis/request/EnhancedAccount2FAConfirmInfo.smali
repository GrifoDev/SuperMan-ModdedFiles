.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;
.super Ljava/lang/Object;


# instance fields
.field private authDevice:Ljava/lang/String;

.field private authResult:I

.field private authType:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;->authType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;->authDevice:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;->authResult:I

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;->deviceType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;->authDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthResult()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;->authResult:I

    return v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccount2FAConfirmInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method
