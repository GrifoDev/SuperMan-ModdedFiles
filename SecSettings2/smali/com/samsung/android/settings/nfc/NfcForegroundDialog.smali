.class public Lcom/samsung/android/settings/nfc/NfcForegroundDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "NfcForegroundDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x28

    const/16 v3, 0x20

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NfcForegroundDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NfcForegroundDialog"

    const-string/jumbo v1, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    const-string/jumbo v1, ""

    new-instance v6, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v3, :cond_0

    iget-boolean v6, v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v6, :cond_0

    move-object v2, v3

    iget-object v6, v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v6, 0x7f0b0423

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    const v6, 0x7f0b042c

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->setFinishOnTouchOutside(Z)V

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    const v7, 0x7f0b0969

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->dismiss()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const v6, 0x7f0b096a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->setupAlert()V

    sget-boolean v6, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "NfcForegroundDialog"

    const-string/jumbo v7, "setupAlert()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string/jumbo v0, "NfcForegroundDialog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
