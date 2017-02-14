.class public Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;
.super Ljava/lang/Object;
.source "OTPSecProdFeatureMonitor.java"


# static fields
.field public static final FEATURE_NOT_ENABLED:Ljava/lang/String; = "OTP Sec Feature not enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOTPFeatureSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
