.class public Lcom/android/systemui/qs/tiles/ScreenCaptureTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ScreenCaptureTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;,
        Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;,
        Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_CAPTURE:Ljava/lang/String; = "com.samsung.android.capture.QuickPanelCapture"

.field private static final CAPTURE_SCREEN:I = 0x0

.field private static final CAPTURE_TILE_MODE:Ljava/lang/String; = "capture_tile_mode"

.field private static final MESSAGE_CLOSE_PANEL_SHOWING_DOWNLOAD_DIALOG:I = 0x2

.field private static final MESSAGE_SHOWING_DOWNLOAD_DIALOG:I = 0x1

.field private static final PERMISSION_CAPTURE:Ljava/lang/String; = "com.samsung.permission.CAPTURE"

.field private static final RECORD_SCREENS:I = 0x1

.field private static final SCREEN_RECORDER_PACKAGE:Ljava/lang/String; = "com.sec.app.screenrecorder"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCaptureMode:I

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mMainHandler:Landroid/os/Handler;

.field private mNeedDoScreenCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSupportRecordMode:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Lcom/android/systemui/qs/QSHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isScreenRecorderInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isSmartCaptureSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->doScreenCapture()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->downloadScreenRecorderFromGalaxyApps()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->showScreenRecorderDownloadDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    iput v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mMainHandler:Landroid/os/Handler;

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_RECORD_MODE:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "capture_tile_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iput v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-void

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    goto :goto_0
.end method

.method private doScreenCapture()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.capture.QuickPanelCapture"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$3;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Landroid/content/Intent;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private doScreenRecorder()V
    .locals 4

    sget-object v2, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "doScreenRecorder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.app.screenrecorder"

    const-string/jumbo v3, "com.sec.app.screenrecorder.activity.LauncherActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "can\'t find the screen recorder package"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private downloadScreenRecorderFromGalaxyApps()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.app.samsungapps"

    const-string/jumbo v2, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "directcall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "callerType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "GUID"

    const-string/jumbo v2, "com.sec.app.screenrecorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private isScreenRecorderInstalled()Z
    .locals 4

    const-string/jumbo v1, "com.sec.app.screenrecorder"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    sget-object v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " screen recorder is installed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSmartCaptureSupported()Z
    .locals 2

    const-string/jumbo v0, "com.samsung.android.app.scrollcapture"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.app.smartcapture"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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

.method private showScreenRecorderDownloadDialog()V
    .locals 11

    const v10, 0x7f120885

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    sget-object v5, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "showScreenRecorderDownloadDialog()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const v6, 0x7f1202d8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const v6, 0x7f120b07

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10302d1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isWhiteTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    const v3, 0x10302d2

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$4;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    const v7, 0x7f1202d6

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$5;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    const v7, 0x7f1202d7

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12091b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12091c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method public getLoggingKey()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_RECORD_MODE:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "ScreenRecord"

    :cond_0
    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-nez v1, :cond_0

    :goto_0
    sget-object v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCaptureMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.app.screenrecorder.START_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12091b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12091c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$_E1rAHwyP0TLOkh6IPgQPZ4S2Mo$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$_E1rAHwyP0TLOkh6IPgQPZ4S2Mo$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isScreenRecorderInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->doScreenRecorder()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->showScreenRecorderDownloadDialog()V

    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    sget-object v0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screencapture or recorder handleLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isScreenRecorderInstalled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$_E1rAHwyP0TLOkh6IPgQPZ4S2Mo$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$_E1rAHwyP0TLOkh6IPgQPZ4S2Mo$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f12091c

    const v2, 0x7f12091b

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const v0, 0x7f080537

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const v0, 0x7f080530

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_ScreenCaptureTile_5782()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->handleClick()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_ScreenCaptureTile_6650()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method
