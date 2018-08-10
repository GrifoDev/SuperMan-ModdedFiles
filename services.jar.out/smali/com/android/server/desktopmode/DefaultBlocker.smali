.class Lcom/android/server/desktopmode/DefaultBlocker;
.super Ljava/lang/Object;
.source "DefaultBlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
    }
.end annotation


# static fields
.field static final REASON_KIDS_MODE:I = 0x8

.field static final REASON_KIOSK_MODE:I = 0x1

.field static final REASON_LOCK_TASK_MODE:I = 0x2

.field static final REASON_NOT_BLOCKED:I = 0x0

.field static final REASON_PRO_KIOSK_MODE:I = 0x3

.field static final REASON_SAFE_MODE:I = 0x4

.field static final REASON_SHARED_DEVICE_MODE:I = 0x5

.field static final REASON_UNAVAILABLE_USER:I = 0x6

.field static final REASON_UPDATING_POLICY_DATABASE:I = 0x7


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;-><init>(Lcom/android/server/desktopmode/DefaultBlocker;I)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private isKidsLauncherMode()Z
    .locals 4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v3, "com.sec.android.app.kidshome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isLockTaskMode()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProKioskMode()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSharedDeviceMode()Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "shared_device_status"

    const/4 v5, -0x2

    invoke-static {v1, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

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

.method private isUnavailableUser()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

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

.method static reasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "REASON_NOT_BLOCKED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "REASON_KIOSK_MODE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "REASON_LOCK_TASK_MODE"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "REASON_PRO_KIOSK_MODE"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "REASON_SAFE_MODE"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "REASON_SHARED_DEVICE_MODE"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "REASON_UNAVAILABLE_USER"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "REASON_UPDATING_POLICY_DATABASE"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "REASON_KIDS_MODE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method getBlocker()Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isProKioskMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isSharedDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isUnavailableUser()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isLaunchPolicyDatabaseExist()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isKidsLauncherMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method
