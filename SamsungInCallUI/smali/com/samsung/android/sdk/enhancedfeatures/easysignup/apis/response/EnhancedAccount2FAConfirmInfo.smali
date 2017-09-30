.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;
.super Ljava/lang/Object;


# instance fields
.field private device_idx:I

.field private duid:J


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;->duid:J

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;->device_idx:I

    return-void
.end method


# virtual methods
.method public getDeviceIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;->device_idx:I

    return v0
.end method

.method public getDuid()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;->duid:J

    return-wide v0
.end method
