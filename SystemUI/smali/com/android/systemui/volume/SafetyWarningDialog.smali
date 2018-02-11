.class public abstract Lcom/android/systemui/volume/SafetyWarningDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "SafetyWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SafetyWarningDialog$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mNewVolumeUp:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowTime:J


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/SafetyWarningDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SafetyWarningDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/systemui/volume/SafetyWarningDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SafetyWarningDialog$1;-><init>(Lcom/android/systemui/volume/SafetyWarningDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->setShowForAllUsers(Z)V

    iget-object v1, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0f04dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, p0}, Lcom/android/systemui/volume/SafetyWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/volume/SafetyWarningDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected abstract cleanUp()V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumeDialog;->mIsSafetyWarningShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SafetyWarningDialog;->cleanUp()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mNewVolumeUp:Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onStart()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/SafetyWarningDialog;->mShowTime:J

    return-void
.end method
