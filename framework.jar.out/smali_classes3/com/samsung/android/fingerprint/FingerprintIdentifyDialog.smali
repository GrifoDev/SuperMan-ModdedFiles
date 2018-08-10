.class public Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;
.super Landroid/app/Dialog;
.source "FingerprintIdentifyDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;,
        Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FPMS_FingerprintIdentifyDialog"


# instance fields
.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iput-object p3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, v2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method getFingerprintClient()Lcom/samsung/android/fingerprint/IFingerprintClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const-string/jumbo v1, "FPMS_FingerprintIdentifyDialog"

    const-string/jumbo v2, "handleMessage: Invaild event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method
