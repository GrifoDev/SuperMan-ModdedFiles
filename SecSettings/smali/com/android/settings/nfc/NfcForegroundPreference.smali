.class public Lcom/android/settings/nfc/NfcForegroundPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;


# instance fields
.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    return-void
.end method


# virtual methods
.method public onPaymentAppsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    return v1
.end method

.method refresh()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v2}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v2}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v1

    invoke-virtual {p0, v5}, Lcom/android/settings/nfc/NfcForegroundPreference;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1212bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-array v2, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1212a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1212a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcForegroundPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v2, v7, [Ljava/lang/CharSequence;

    const-string/jumbo v3, "1"

    aput-object v3, v2, v5

    const-string/jumbo v3, "0"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcForegroundPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "0"

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
