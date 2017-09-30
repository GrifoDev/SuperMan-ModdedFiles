.class public Lcom/android/incallui/util/InCallUtilsWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InCallUtilsWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLTNContactsMatchLength(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static isLTNSpecialNumber(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

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

    return v0
.end method

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/android/incallui/wrapper/PhoneNumberUtilsWrapper;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

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

    return v0
.end method

.method public static keyguardWaitingForActivityDrawn()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/wrapper/ActivityManagerNativeWrapper;->getDefault()Lcom/android/incallui/wrapper/IActivityManagerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/IActivityManagerWrapper;->keyguardWaitingForActivityDrawn()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "activityManagerWrapper is null."

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsWrapper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InCallUtilsWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
