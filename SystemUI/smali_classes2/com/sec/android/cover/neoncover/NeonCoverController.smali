.class public Lcom/sec/android/cover/neoncover/NeonCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "NeonCoverController.java"

# interfaces
.implements Lcom/sec/android/cover/neoncover/NeonControllerCallback;
.implements Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/neoncover/NeonCoverController$1;,
        Lcom/sec/android/cover/neoncover/NeonCoverController$2;,
        Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;,
        Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;,
        Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-neoncover-NeonFSM$NeonStateSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAnimations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;",
            "Lcom/sec/android/cover/neoncover/animation/NeonAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

.field private mBroadcastReceiver:Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;

.field private mCoverCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mHandler:Landroid/os/Handler;

.field private mLastNeonWakeupTime:J

.field private mLcdOffByCoverDisabled:Z

.field private mMissedEventListener:Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

.field private mMissedEventManager:Lcom/sec/android/cover/manager/MissedEventManager;

.field private mNeonFSM:Lcom/sec/android/cover/neoncover/NeonFSM;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSystemEventListener:Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic -getcom-sec-android-cover-neoncover-NeonFSM$NeonStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController;->-com-sec-android-cover-neoncover-NeonFSM$NeonStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController;->-com-sec-android-cover-neoncover-NeonFSM$NeonStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->values()[Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ALARM:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALENDAR:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALL:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->COVER_CLOSED:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->FULL_ON:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->MESSAGE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TEST_MODE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TIMER:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController;->-com-sec-android-cover-neoncover-NeonFSM$NeonStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/neoncover/NeonCoverController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mLcdOffByCoverDisabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->wakeUpForNeon()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isAnyAnimationPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isAnyAnimationReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverStateForNeon()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->getNeonFSM()Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/sec/android/cover/neoncover/NeonCoverController;Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->clearAnimations()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->playTestAnimation()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->stopAllAnimations()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/neoncover/NeonCoverController$1;-><init>(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mCoverCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/neoncover/NeonCoverController$2;-><init>(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mMissedEventListener:Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    iput-object p2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mRootView:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/sec/android/cover/manager/MissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/MissedEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mMissedEventManager:Lcom/sec/android/cover/manager/MissedEventManager;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonFSM;

    invoke-direct {v0}, Lcom/sec/android/cover/neoncover/NeonFSM;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mNeonFSM:Lcom/sec/android/cover/neoncover/NeonFSM;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mNeonFSM:Lcom/sec/android/cover/neoncover/NeonFSM;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/neoncover/NeonFSM;->setListener(Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;)V

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;-><init>(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mBroadcastReceiver:Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;

    invoke-static {p1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    return-void
.end method

.method private cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cancelAnimationsForType() type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->ONGOING:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    if-ne v3, p1, :cond_1

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->ONGOING:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_0

    :cond_1
    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->TEST_MODE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    if-ne v3, p1, :cond_2

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->TEST_MODE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "neon_cover_all_test"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x378

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;

    invoke-virtual {v3}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->stopAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void
.end method

.method private clearAnimations()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "clearAnimations()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;

    invoke-virtual {v2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNeonFSM()Lcom/sec/android/cover/neoncover/NeonFSM;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mNeonFSM:Lcom/sec/android/cover/neoncover/NeonFSM;

    return-object v0
.end method

.method private isAnyAnimationPlaying()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;

    invoke-virtual {v2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isAnimationPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private isAnyAnimationReady()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;

    invoke-virtual {v2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isAnimationPrepared()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private isCoverStateForNeon()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverOpen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private playAnimation(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playAnimation() neonState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "playAnimation(): cover is open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mView:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "playAnimation(): mView is null, cover is not attached!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "neon_cover_all_test"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x378

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-getcom-sec-android-cover-neoncover-NeonFSM$NeonStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_9

    sget-object v2, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "playAnimation(): there is animation to play"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    sget-object v3, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->BRIGHT:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->getAnimationView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->startAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->ONGOING:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->ONGOING:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->prepareToPlay()V

    sget-object v2, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->ONGOING:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-direct {p0, v2}, Lcom/sec/android/cover/neoncover/NeonCoverController;->cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_2
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->COVER_CLOSE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->COVER_CLOSE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->prepareToPlay()V

    sget-object v2, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->COVER_CLOSE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-direct {p0, v2}, Lcom/sec/android/cover/neoncover/NeonCoverController;->cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->FULL_ON:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;

    if-nez v0, :cond_6

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationFullOn;

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationFullOn;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->FULL_ON:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->prepareToPlay()V

    sget-object v2, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->FULL_ON:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-direct {p0, v2}, Lcom/sec/android/cover/neoncover/NeonCoverController;->cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;

    if-nez v0, :cond_7

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->prepareToPlay()V

    sget-object v2, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-direct {p0, v2}, Lcom/sec/android/cover/neoncover/NeonCoverController;->cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->TEST_MODE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;

    if-nez v0, :cond_8

    new-instance v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimations:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->TEST_MODE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->prepareToPlay()V

    sget-object v2, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->TEST_MODE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-direct {p0, v2}, Lcom/sec/android/cover/neoncover/NeonCoverController;->cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/cover/neoncover/NeonCoverController;->cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    sget-object v3, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->DARK:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    sget-object v2, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "playAnimation(): nothing to play"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private playTestAnimation()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playTestAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "neon_cover_full_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->FULL_ON:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->playAnimation(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cover_ongoing_animation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALL:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->playAnimation(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cover_close_animation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->COVER_CLOSED:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->playAnimation(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cover_message_animation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->MESSAGE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->playAnimation(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto :goto_0
.end method

.method private stopAllAnimations()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopAllAnimations()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopAllAnimations() cover is open"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mView:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "topAllAnimations() mView is null, cover is not attached!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    sget-object v2, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->DARK:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "neon_cover_all_test"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x378

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverStateForNeon()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private wakeUpForNeon()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "wakeUpForNeon()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mLastNeonWakeupTime:J

    return-void
.end method


# virtual methods
.method public isCoverOpen()Z
    .locals 1

    invoke-super {p0}, Lcom/sec/android/cover/BaseCoverController;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mLcdOffByCoverDisabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAnimationCancel(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V
    .locals 4

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnimationCancel: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAnimationEnd(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V
    .locals 4

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnimationEnd: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 10

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mView:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mView:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;-><init>(Landroid/os/Looper;Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mCoverCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->-get0()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v7, v0, :cond_1

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->-get0()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mBroadcastReceiver:Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mMissedEventManager:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/MissedEventManager;->start()V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mMissedEventManager:Lcom/sec/android/cover/manager/MissedEventManager;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mMissedEventListener:Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/MissedEventManager;->setListener(Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;)V

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;-><init>(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mSystemEventListener:Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mSystemEventListener:Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerLedSystemListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    const-string/jumbo v0, "NeonCoverAnimationWakeLock"

    const/16 v1, 0xa

    invoke-virtual {v9, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v6

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Shouldn\'t happen"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iput-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mView:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->clearAnimations()V

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mCoverCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mBroadcastReceiver:Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mMissedEventManager:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/MissedEventManager;->stop()V

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mMissedEventManager:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/manager/MissedEventManager;->setListener(Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mSystemEventListener:Lcom/sec/android/cover/neoncover/NeonCoverController$NeonSystemEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterLedSystemEventListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mBrightnessController:Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->clear()V

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iput-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mAnimationWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Shouldn\'t happen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCoverEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->getPriority()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverStateForNeon()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->wakeUpForNeon()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "neon_cover_all_test"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x378

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->playTestAnimation()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->playAnimation(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->cancelAnimationsForType(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    goto :goto_0
.end method
