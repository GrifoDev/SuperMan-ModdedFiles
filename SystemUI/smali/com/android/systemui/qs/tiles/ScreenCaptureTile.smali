.class public Lcom/android/systemui/qs/tiles/ScreenCaptureTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ScreenCaptureTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;,
        Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_CAPTURE:Ljava/lang/String; = "com.samsung.android.capture.QuickPanelCapture"

.field private static final ACTION_SCREEN_RECORDER_OFF:Ljava/lang/String; = "com.sec.app.screenrecorder.off"

.field private static final ACTION_SCREEN_RECORDER_ON:Ljava/lang/String; = "com.sec.app.screenrecorder.on"

.field private static final CAPTURE_SCREEN:I = 0x0

.field private static final CAPTURE_TILE_MODE:Ljava/lang/String; = "capture_tile_mode"

.field private static final PERMISSION_CAPTURE:Ljava/lang/String; = "com.samsung.permission.CAPTURE"

.field private static final RECORD_SCREENS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isScreenRecorderOpen:Z

.field private mCaptureMode:I

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mNeedDoScreenCapture:Z

.field private mNeedDoScreenRecorder:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSupportRecordMode:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isScreenRecorderOpen:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenRecorder:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isScreenRecorderOpen:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenRecorder:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->doScreenCapture()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->doScreenRecorder()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->refreshState(Ljava/lang/Object;)V

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

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenRecorder:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isScreenRecorderOpen:Z

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.sec.app.screenrecorder"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "capture_tile_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    iput v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.sec.app.screenrecorder.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.app.screenrecorder.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_1
    iput-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    goto :goto_1
.end method

.method private doScreenCapture()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.capture.QuickPanelCapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.permission.CAPTURE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "doScreenCapture Send com.samsung.android.capture.QuickPanelCapture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V
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


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f066a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f066b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mSupportRecordMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 3

    iget v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.USEFUL_FEATURE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "smart_capture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
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

    const v1, 0x7f0f066a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f066b

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

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->isScreenRecorderOpen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenRecorder:Z

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0f066b

    const v2, 0x7f0f066a

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const v0, 0x7f0203f1

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mCaptureMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const v0, 0x7f0203ac

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method
