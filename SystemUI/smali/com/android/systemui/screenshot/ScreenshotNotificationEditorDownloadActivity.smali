.class public Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;
.super Landroid/app/Activity;
.source "ScreenshotNotificationEditorDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;
    }
.end annotation


# static fields
.field private static ACTION_HOME_KEY_PRESSED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationId:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->ACTION_HOME_KEY_PRESSED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->downloadPhotoEditorFromGalaxyApps()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.action.START_DOCK_OR_HOME"

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->ACTION_HOME_KEY_PRESSED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private downloadPhotoEditorFromGalaxyApps()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.android.app.samsungapps"

    const-string/jumbo v3, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "directcall"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "callerType"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "GUID"

    const-string/jumbo v3, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initIntentFiler()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->ACTION_HOME_KEY_PRESSED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isWhiteTheme()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "ro.build.scafe.cream"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "white"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    :cond_0
    const-string/jumbo v2, "ro.build.scafe.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x7e1

    if-lt v2, v3, :cond_1

    return v5

    :cond_1
    return v4
.end method

.method private showPhotoEditorDownloadDialog()V
    .locals 12

    const v11, 0x7f120840

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v6, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "showPhotoEditorDownloadDialog()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f1202d8

    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v11}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f120b07

    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v11}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10302d1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->isWhiteTheme()Z

    move-result v6

    if-eqz v6, :cond_0

    const v4, 0x10302d2

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V

    const v8, 0x7f1202d6

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V

    const v8, 0x7f1202d7

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->requestWindowFeature(I)Z

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "notification_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mNotificationId:I

    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mNotificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->initIntentFiler()V

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->showPhotoEditorDownloadDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->setVisible(Z)V

    return-void
.end method
