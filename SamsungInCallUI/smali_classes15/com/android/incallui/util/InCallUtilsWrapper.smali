.class public Lcom/android/incallui/util/InCallUtilsWrapper;
.super Ljava/lang/Object;
.source "InCallUtilsWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InCallUtilsWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 31
    move-object v0, p0

    .line 32
    .local v0, "extractedNumber":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static getLTNContactsMatchLength(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x7

    .line 61
    .local v0, "ltnContactsMatchLength":I
    invoke-static {p0}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v0

    .line 62
    return v0
.end method

.method public static isLTNSpecialNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "strNumber"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "isLtnSpecialNumber":Z
    invoke-static {p0}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v0

    .line 68
    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "isLocalEmergencyNumber":Z
    invoke-static {p0, p1, p2}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocalEmergencyNumber subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLocalEmergencyNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsWrapper;->log(Ljava/lang/String;)V

    .line 47
    return v0
.end method

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .locals 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "isVoiceMailNumber":Z
    invoke-static {p0, p1}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceMailNumber subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isVoiceMailNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsWrapper;->log(Ljava/lang/String;)V

    .line 40
    return v0
.end method

.method public static keyguardWaitingForActivityDrawn()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/android/incallui/wrapper/ActivityManagerNativeWrapper;->getDefault()Lcom/android/incallui/wrapper/IActivityManagerWrapper;

    move-result-object v0

    .line 52
    .local v0, "activityManagerWrapper":Lcom/android/incallui/wrapper/IActivityManagerWrapper;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/android/incallui/wrapper/IActivityManagerWrapper;->keyguardWaitingForActivityDrawn()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "activityManagerWrapper is null."

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsWrapper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "InCallUtilsWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method
