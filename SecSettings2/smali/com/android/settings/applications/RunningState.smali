.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$1;,
        Lcom/android/settings/applications/RunningState$2;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;,
        Lcom/android/settings/applications/RunningState$UserState;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field private final mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iput v3, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    new-instance v1, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    iput-boolean v3, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "RunningState:Background"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v4, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    if-nez v2, :cond_5

    new-instance v2, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v2, v3}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    iget v3, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    new-instance v3, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {v3}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v1, v3, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v4, v1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2

    sget-object v1, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    :cond_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0xaa

    if-ge v0, v1, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 5

    if-eqz p2, :cond_1

    iget v3, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_0

    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    move-object v1, p1

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 68

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    add-int/lit8 v63, v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/16 v18, 0x0

    const/16 v63, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v51

    if-eqz v51, :cond_1

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v11

    :goto_0
    const/16 v27, 0x0

    :goto_1
    move/from16 v0, v27

    if-ge v0, v11, :cond_4

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v63

    const-string/jumbo v64, "CscFeature_Common_SupportCiq"

    invoke-virtual/range {v63 .. v64}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v63

    if-eqz v63, :cond_2

    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v63, v0

    if-eqz v63, :cond_2

    const-string/jumbo v63, "diagandroid.iqd"

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_2

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v27, v27, -0x1

    add-int/lit8 v11, v11, -0x1

    :cond_0
    :goto_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v63, v0

    if-nez v63, :cond_3

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-nez v63, :cond_3

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v27, v27, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x8

    if-eqz v63, :cond_0

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v27, v27, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v48

    if-eqz v48, :cond_5

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    if-ge v0, v9, :cond_6

    move-object/from16 v0, v48

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    new-instance v65, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v65

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v63 .. v65}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    if-ge v0, v11, :cond_8

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_7

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v13, :cond_7

    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v63, v0

    if-eqz v63, :cond_7

    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    :cond_7
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    :cond_8
    const/16 v27, 0x0

    :goto_6
    move/from16 v0, v27

    if-ge v0, v11, :cond_15

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_9

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v13, :cond_9

    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v63, v0

    if-eqz v63, :cond_10

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    if-nez v49, :cond_a

    new-instance v49, Ljava/util/HashMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v47, :cond_b

    const/16 v18, 0x1

    new-instance v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v63

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_14

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v43, v0

    :goto_7
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v43

    move/from16 v1, v63

    if-eq v0, v1, :cond_e

    const/16 v18, 0x1

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move/from16 v1, v43

    if-eq v0, v1, :cond_e

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    :cond_c
    if-eqz v43, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v43

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    move/from16 v0, v43

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    :cond_e
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    :cond_f
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v63

    or-int v18, v18, v63

    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_6

    :cond_10
    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0x12c

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_9

    const/16 v58, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    :goto_9
    if-eqz v13, :cond_12

    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v63, v0

    if-nez v63, :cond_11

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_13

    :cond_11
    const/16 v58, 0x1

    :cond_12
    if-eqz v58, :cond_9

    goto :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    goto :goto_9

    :cond_14
    const/16 v43, 0x0

    goto/16 :goto_7

    :cond_15
    const/16 v27, 0x0

    :goto_a
    move/from16 v0, v27

    if-ge v0, v9, :cond_1a

    move-object/from16 v0, v48

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v47, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v47, :cond_16

    const/16 v18, 0x1

    new-instance v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    :cond_19
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/16 v27, 0x0

    :goto_c
    move/from16 v0, v27

    if-ge v0, v10, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_1b
    if-eqz v19, :cond_1c

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1c
    :goto_d
    add-int/lit8 v27, v27, 0x1

    goto :goto_c

    :cond_1d
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_d

    :cond_1e
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v27, 0x0

    :goto_e
    move/from16 v0, v27

    if-ge v0, v8, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v63, v0

    if-eqz v63, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v63

    if-nez v63, :cond_21

    :cond_20
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v27, v27, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_21
    add-int/lit8 v27, v27, 0x1

    goto :goto_e

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/16 v27, 0x0

    :goto_f
    move/from16 v0, v27

    if-ge v0, v6, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v63

    or-int v18, v18, v63

    :cond_23
    add-int/lit8 v27, v27, 0x1

    goto :goto_f

    :cond_24
    const/16 v61, 0x0

    const/16 v27, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_25
    :goto_11
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_2b

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_28

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-nez v63, :cond_26

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    :cond_26
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v57

    :cond_27
    :goto_12
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_25

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_27

    const/16 v18, 0x1

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :cond_28
    const/16 v18, 0x1

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->remove()V

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->size()I

    move-result v63

    if-nez v63, :cond_2a

    if-nez v61, :cond_29

    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v61

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    :cond_2b
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_10

    :cond_2c
    if-eqz v61, :cond_2d

    const/16 v27, 0x0

    :goto_13
    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_2d

    move-object/from16 v0, v61

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Integer;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_13

    :cond_2d
    if-eqz v18, :cond_43

    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    const/16 v27, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_15
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_31

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    const-wide v64, 0x7fffffffffffffffL

    move-wide/from16 v0, v64

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :cond_2e
    :goto_16
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_30

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2f

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x1

    if-eqz v63, :cond_2f

    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    :cond_2f
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2e

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-eqz v63, :cond_2e

    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v66, v0

    cmp-long v63, v64, v66

    if-lez v63, :cond_2e

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    :cond_30
    move-object/from16 v0, v59

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_31
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_14

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v63, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    const/16 v27, 0x0

    :goto_17
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_3c

    move-object/from16 v0, v59

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-lez v63, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :goto_18
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_36

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings/applications/RunningState$ServiceItem;

    move/from16 v0, v30

    move-object/from16 v1, v55

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    const/16 v30, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-eqz v63, :cond_35

    if-eqz v28, :cond_34

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_34

    const/16 v26, 0x0

    :cond_34
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v28, v0

    goto :goto_18

    :cond_35
    const/16 v26, 0x0

    goto :goto_18

    :cond_36
    if-eqz v26, :cond_37

    if-nez v28, :cond_38

    :cond_37
    new-instance v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :goto_19
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_3a

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    move-object/from16 v1, v55

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_19

    :cond_38
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->size()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_37

    :cond_39
    const/16 v63, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v63

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    :goto_1a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_17

    :cond_3a
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    move/from16 v29, v23

    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    add-int/lit8 v63, v63, -0x1

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_39

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v29, v29, 0x1

    goto :goto_1b

    :cond_3b
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v27, 0x0

    :goto_1c
    move/from16 v0, v27

    if-ge v0, v8, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3e

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->size()I

    move-result v63

    if-gtz v63, :cond_3e

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3d

    new-instance v63, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v64, v0

    invoke-direct/range {v63 .. v64}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_3d
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v63

    move-object/from16 v4, v64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1c

    :cond_3f
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v64

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/16 v27, 0x0

    :goto_1e
    move/from16 v0, v27

    if-ge v0, v12, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v62

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_41

    const/16 v63, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    :cond_41
    add-int/lit8 v27, v27, 0x1

    goto :goto_1e

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    :try_start_0
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v64

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/16 v27, 0x0

    :goto_1f
    move/from16 v0, v27

    if-ge v0, v10, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_46

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0x190

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_44

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    add-int/lit8 v27, v27, 0x1

    goto :goto_1f

    :catchall_0
    move-exception v63

    monitor-exit v64

    throw v63

    :cond_44
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0xc8

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_45

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_45
    const-string/jumbo v63, "RunningState"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Unknown non-service process: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " #"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_46
    add-int/lit8 v39, v39, 0x1

    goto :goto_20

    :cond_47
    const-wide/16 v14, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v52, 0x0

    const/16 v31, 0x0

    const/16 v35, 0x0

    const/16 v21, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v44, v0

    const/16 v27, 0x0

    :goto_21
    move/from16 v0, v27

    move/from16 v1, v38

    if-ge v0, v1, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    aput v63, v44, v27

    add-int/lit8 v27, v27, 0x1

    goto :goto_21

    :cond_48
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v50

    const/16 v16, 0x0

    const/16 v27, 0x0

    move-object/from16 v32, v31

    :goto_22
    :try_start_2
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v63, v0

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    aget-wide v64, v50, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-wide/from16 v2, v64

    move/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v63

    or-int v18, v18, v63

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_49

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0

    add-long v52, v52, v64

    move-object/from16 v31, v32

    :goto_23
    add-int/lit8 v27, v27, 0x1

    move-object/from16 v32, v31

    goto :goto_22

    :cond_49
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0x190

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_51

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0

    add-long v14, v14, v64

    if-eqz v32, :cond_4b

    new-instance v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4a

    const/16 v63, 0x1

    :goto_24
    or-int v21, v21, v63

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v31, v32

    :goto_25
    const/16 v63, 0x1

    :try_start_3
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v16, v16, 0x1

    goto :goto_23

    :cond_4a
    const/16 v63, 0x0

    goto :goto_24

    :cond_4b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v16

    move/from16 v1, v63

    if-ge v0, v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_50

    :cond_4c
    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v17, 0x0

    :goto_26
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4e

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4d

    const/16 v63, 0x1

    :goto_27
    or-int v21, v21, v63

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_26

    :cond_4d
    const/16 v63, 0x0

    goto :goto_27

    :cond_4e
    new-instance v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4f

    const/16 v63, 0x1

    :goto_28
    or-int v21, v21, v63

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_25

    :catch_0
    move-exception v22

    :goto_29
    if-nez v31, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v63

    move/from16 v1, v36

    if-le v0, v1, :cond_54

    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v17, 0x0

    :goto_2a
    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_53

    const/16 v63, 0x1

    :goto_2b
    or-int v21, v21, v63

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_2a

    :cond_4f
    const/16 v63, 0x0

    goto :goto_28

    :cond_50
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v31, v32

    goto/16 :goto_25

    :cond_51
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0xc8

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_5d

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    add-long v24, v24, v64

    move-object/from16 v31, v32

    goto/16 :goto_23

    :cond_52
    move-object/from16 v31, v32

    goto/16 :goto_29

    :cond_53
    const/16 v63, 0x0

    goto :goto_2b

    :cond_54
    if-eqz v31, :cond_55

    if-nez v21, :cond_56

    move-object/from16 v35, v31

    :cond_55
    const/16 v27, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    add-int/lit8 v27, v27, 0x1

    goto :goto_2c

    :cond_56
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v27, 0x0

    :goto_2d
    move/from16 v0, v27

    if-ge v0, v7, :cond_58

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v63

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    :goto_2e
    add-int/lit8 v27, v27, 0x1

    goto :goto_2d

    :cond_57
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/16 v27, 0x0

    :goto_2f
    move/from16 v0, v27

    if-ge v0, v12, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v62

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_59

    const/16 v63, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    :cond_59
    add-int/lit8 v27, v27, 0x1

    goto :goto_2f

    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    :try_start_7
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    if-eqz v31, :cond_5b

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v63, v0

    if-eqz v63, :cond_5b

    const/16 v18, 0x1

    :cond_5b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move/from16 v63, v0

    if-nez v63, :cond_5c

    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5c
    monitor-exit v64

    return v18

    :catchall_1
    move-exception v63

    monitor-exit v64

    throw v63

    :catch_1
    move-exception v22

    move-object/from16 v31, v32

    goto/16 :goto_29

    :cond_5d
    move-object/from16 v31, v32

    goto/16 :goto_23
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hasData()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method pause()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method updateNow()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method waitForData()V
    .locals 6

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
