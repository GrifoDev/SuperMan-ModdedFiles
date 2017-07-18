.class public Lcom/android/contacts/common/compat/TelephonyManagerSdkCompat;
.super Ljava/lang/Object;
.source "TelephonyManagerSdkCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVoicemailRingtoneUri(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isVoicemailVibrationEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    return v0
.end method
