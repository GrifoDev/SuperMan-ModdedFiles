.class public Lcom/samsung/android/settings/nfc/NfcForegroundPreference;
.super Lcom/samsung/android/settings/DropDownPreference;
.source "NfcForegroundPreference.java"


# static fields
.field private static TAP_AND_PAY_OPEN:I


# instance fields
.field private final mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DropDownPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->refresh()V

    return-void
.end method


# virtual methods
.method protected persistString(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    :goto_0
    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->TAP_AND_PAY_OPEN:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->TAP_AND_PAY_OPEN:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    return v2

    :cond_2
    move v3, v1

    goto :goto_0
.end method

.method refresh()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v3

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0947

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0948

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0949

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-array v4, v9, [Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v4, v9, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "1"

    aput-object v5, v4, v7

    const-string/jumbo v5, "0"

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_1

    const-string/jumbo v4, "1"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    aput-object v6, v5, v7

    const v6, 0x7f0b1882

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    aput-object v6, v5, v7

    const v6, 0x7f0b1881

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "0"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method
