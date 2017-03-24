.class public Lcom/android/systemui/volume/VolumeUI;
.super Lcom/android/systemui/SystemUI;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeUI$Receiver;,
        Lcom/android/systemui/volume/VolumeUI$RestorationNotification;,
        Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;
    }
.end annotation


# static fields
.field private static LOGD:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mReceiver:Lcom/android/systemui/volume/VolumeUI$Receiver;

.field private final mRestorationNotification:Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

.field private mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

.field private mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeUI;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$RestorationNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mRestorationNotification:Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeComponent;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI;->setDefaultVolumeController(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI;->showServiceActivationDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "VolumeUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/volume/VolumeUI$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$Receiver;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mReceiver:Lcom/android/systemui/volume/VolumeUI$Receiver;

    new-instance v0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$RestorationNotification;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mRestorationNotification:Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    return-void
.end method

.method private getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v4, "VolumeUI"

    const-string/jumbo v5, "Error loading app label"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v2
.end method

.method private getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    return-object v0
.end method

.method private setDefaultVolumeController(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VolumeUI"

    const-string/jumbo v1, "Registering default volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeComponent;->register()V

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "VolumeUI"

    const-string/jumbo v1, "Unregistering default volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    goto :goto_0
.end method

.method private showServiceActivationDialog(Landroid/content/ComponentName;)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f04c5

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/systemui/volume/VolumeUI$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeUI$1;-><init>(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)V

    const v2, 0x7f0f04c6

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f0f04c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "mEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "mVolumeControllerService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeComponent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/volume/VolumeComponent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public start()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    new-instance v6, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v7, v6}, Lcom/android/systemui/volume/VolumeDialogComponent;-><init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mReceiver:Lcom/android/systemui/volume/VolumeUI$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeUI$Receiver;->start()V

    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor;

    const-string/jumbo v1, "VolumeUI"

    sget-boolean v2, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "volume_controller_service_component"

    new-instance v5, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;

    invoke-direct {v5, p0, v7}, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/ServiceMonitor;-><init>(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->start()V

    return-void
.end method
