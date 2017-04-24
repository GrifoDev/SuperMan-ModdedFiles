.class public Lcom/android/contacts/common/compat/TelephonyManagerCompat;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# static fields
.field public static final TELEPHONY_MANAGER_CLASS:Ljava/lang/String; = "android.telephony.TelephonyManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 6
    .param p0    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.telephony.TelephonyManager"

    const-string v2, "getDeviceId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneCount(Landroid/telephony/TelephonyManager;)I
    .locals 4
    .param p0    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.telephony.TelephonyManager"

    const-string v2, "getPhoneCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    goto :goto_0
.end method

.method public static getVoicemailRingtoneUri(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/TelephonyManagerSdkCompat;->getVoicemailRingtoneUri(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static isHearingAidCompatibilitySupported(Landroid/telephony/TelephonyManager;)Z
    .locals 4
    .param p0    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.telephony.TelephonyManager"

    const-string v2, "isHearingAidCompatibilitySupported"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isHearingAidCompatibilitySupported()Z

    move-result v0

    goto :goto_0
.end method

.method public static isTtyModeSupported(Landroid/telephony/TelephonyManager;)Z
    .locals 4
    .param p0    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.telephony.TelephonyManager"

    const-string v2, "isTtyModeSupported"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isTtyModeSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public static isVoiceCapable(Landroid/telephony/TelephonyManager;)Z
    .locals 6
    .param p0    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopMr1Compatible()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.telephony.TelephonyManager"

    const-string v4, "isVoiceCapable"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public static isVoicemailVibrationEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/TelephonyManagerSdkCompat;->isVoicemailVibrationEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    goto :goto_0
.end method
