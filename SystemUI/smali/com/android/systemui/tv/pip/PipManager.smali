.class public Lcom/android/systemui/tv/pip/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipManager$1;,
        Lcom/android/systemui/tv/pip/PipManager$2;,
        Lcom/android/systemui/tv/pip/PipManager$3;,
        Lcom/android/systemui/tv/pip/PipManager$4;,
        Lcom/android/systemui/tv/pip/PipManager$5;,
        Lcom/android/systemui/tv/pip/PipManager$Listener;,
        Lcom/android/systemui/tv/pip/PipManager$MediaListener;
    }
.end annotation


# static fields
.field private static final DEBUG_FORCE_ONBOARDING:Z

.field private static sPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private static final sSettingsPackageAndClassNamePairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClosePipRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentPipBounds:Landroid/graphics/Rect;

.field private mDefaultPipBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastPackagesResourceGranted:[Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/tv/pip/PipManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/tv/pip/PipManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMenuModePipBounds:Landroid/graphics/Rect;

.field private mOnboardingShown:Z

.field private mPipBounds:Landroid/graphics/Rect;

.field private mPipComponentName:Landroid/content/ComponentName;

.field private mPipMediaController:Landroid/media/session/MediaController;

.field private mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

.field private mPipTaskId:I

.field private mRecentsFocusChangedAnimationDurationMs:I

.field private mRecentsFocusedPipBounds:Landroid/graphics/Rect;

.field private mRecentsPipBounds:Landroid/graphics/Rect;

.field private final mResizePinnedStackRunnable:Ljava/lang/Runnable;

.field private mSettingsPipBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mSuspendPipResizingReason:I

.field private mSystemServiceProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/IActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/tv/pip/PipManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/tv/pip/PipManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/tv/pip/PipManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/tv/pip/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/tv/pip/PipManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/tv/pip/PipManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/tv/pip/PipManager;->isSettingsShown(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tv/pip/PipManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/tv/pip/PipManager;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->handleMediaResourceGranted([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/tv/pip/PipManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->launchPipOnboardingActivityIfNeeded()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/tv/pip/PipManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->showPipMenu()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/tv/pip/PipManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->showPipOverlay()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/tv/pip/PipManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->updateMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/tv/pip/PipManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "debug.tv.pip_force_onboarding"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/tv/pip/PipManager;->DEBUG_FORCE_ONBOARDING:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "com.android.tv.settings"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "com.google.android.leanbacklauncher"

    const-string/jumbo v3, "com.google.android.leanbacklauncher.settings.HomeScreenSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$1;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$2;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$3;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$4;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$5;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    return-void
.end method

.method private closePipInternal(Z)V
    .locals 5

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->removeStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onPipActivityClosed()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "removeStack failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v4}, Lcom/android/systemui/tv/pip/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/tv/pip/PipManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sPipManager:Lcom/android/systemui/tv/pip/PipManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/tv/pip/PipManager;

    invoke-direct {v0}, Lcom/android/systemui/tv/pip/PipManager;-><init>()V

    sput-object v0, Lcom/android/systemui/tv/pip/PipManager;->sPipManager:Lcom/android/systemui/tv/pip/PipManager;

    :cond_0
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sPipManager:Lcom/android/systemui/tv/pip/PipManager;

    return-object v0
.end method

.method private handleMediaResourceGranted([Ljava/lang/String;)V
    .locals 10

    const/4 v4, 0x0

    iget v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-nez v3, :cond_1

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v1, v6, v5

    array-length v8, p1

    move v3, v4

    :goto_2
    if-ge v3, v8, :cond_2

    aget-object v0, p1, v3

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipManager;->closePip()V

    goto :goto_0
.end method

.method private static isSettingsShown(Landroid/content/ComponentName;)Z
    .locals 6

    sget-object v4, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private launchPipOnboardingActivityIfNeeded()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v1, Lcom/android/systemui/tv/pip/PipManager;->DEBUG_FORCE_ONBOARDING:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mOnboardingShown:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mOnboardingShown:Z

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "TvPictureInPictureOnboardingShown"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/tv/pip/PipOnboardingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showPipMenu()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v2}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->isRecentsShown()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onShowPipMenu()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/tv/pip/PipMenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPipOverlay()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->showPipOverlay(Landroid/content/Context;)V

    return-void
.end method

.method private updateMediaController(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eq v3, v2, :cond_3

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    invoke-interface {v3}, Lcom/android/systemui/tv/pip/PipManager$MediaListener;->onMediaControllerChanged()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private updatePipVisibility(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->updatePipVisibility(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closePip()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/tv/pip/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method getMediaController()Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getPipRecentsOverlayManager()Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    return-object v0
.end method

.method getPlaybackState()I
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return v6

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    if-nez v2, :cond_5

    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    return v4

    :cond_3
    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    const-wide/16 v4, 0x2

    and-long/2addr v4, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    return v4

    :cond_6
    return v6
.end method

.method public getRecentsFocusedPipBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusedPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 5

    iget-boolean v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mInitialized:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mInitialized:Z

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    const v2, 0x7f0f0231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    const v2, 0x7f0f0232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    const v2, 0x7f0f0233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsPipBounds:Landroid/graphics/Rect;

    const v2, 0x7f0f0234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusedPipBounds:Landroid/graphics/Rect;

    const v2, 0x7f0c0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusChangedAnimationDurationMs:I

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mSystemServiceProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mSystemServiceProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "TvPictureInPictureOnboardingShown"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mOnboardingShown:Z

    new-instance v2, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-direct {v2, p1}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "media_session"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-void
.end method

.method public isPipShown()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method movePipToFullscreen()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onMoveToFullscreen()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    return-void
.end method

.method public removeListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resizePinnedStack(I)V
    .locals 10

    const/4 v2, 0x3

    const/4 v1, 0x4

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_0
    iput p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_1
    if-ltz v8, :cond_2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onPipResizeAboutToStart()V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    :goto_2
    const/4 v6, -0x1

    if-eqz v9, :cond_5

    :try_start_0
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-ne v0, v1, :cond_5

    :cond_4
    iget v6, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusChangedAnimationDurationMs:I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusedPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    :catch_0
    move-exception v7

    const-string/jumbo v0, "PipManager"

    const-string/jumbo v1, "resizeStack failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resumePipResizing(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showTvPictureInPictureMenu()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    :cond_0
    return-void
.end method

.method public suspendPipResizing(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    return-void
.end method
