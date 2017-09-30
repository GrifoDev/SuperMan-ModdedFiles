.class public Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 5

    if-eqz p0, :cond_0

    const-string v0, "android.telecom.TelecomManager"

    const-string v1, "getPhoneAccount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/telecom/PhoneAccountHandle;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/telecom/TelecomManager;Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/telecom/TelecomManager;->getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/telecom/TelecomManager;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/TelecomManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.telecom.TelecomManager"

    const-string v1, "getCallCapablePhoneAccounts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/telecom/TelecomManager;Landroid/content/Intent;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static a(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.telecom.TelecomManager"

    const-string v1, "isVoiceMailNumber"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/telecom/PhoneAccountHandle;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/telecom/TelecomManager;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/telecom/TelecomManager;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
