.class Lcom/android/server/desktopmode/EmergencyModeBlocker;
.super Ljava/lang/Object;
.source "EmergencyModeBlocker.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;,
        Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;
    }
.end annotation


# static fields
.field private static final DELAY_UPDATE:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockerRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mEnabledInBroadcast:Z

.field private mEnabledInSettings:Z

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEnabledInSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/desktopmode/EmergencyModeBlocker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/desktopmode/-$Lambda$UbRelE4ybY7Ifiik9A3eCwvvwmY;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/-$Lambda$UbRelE4ybY7Ifiik9A3eCwvvwmY;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEnabledInSettings()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    new-instance v0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration()V

    return-void
.end method

.method private isEnabledInSettings()Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "emergency_mode"

    const/4 v5, -0x2

    invoke-static {v1, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleUpdateBlockerRegistration()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    return-void
.end method

.method private scheduleUpdateBlockerRegistration(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateBlockerRegistration()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_server_desktopmode_EmergencyModeBlocker-mthref-0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->updateBlockerRegistration()V

    return-void
.end method

.method isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    return v0
.end method

.method public onBlocked()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
