.class public Lcom/samsung/android/share/SShareBixby;
.super Ljava/lang/Object;
.source "SShareBixby.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareBixby$1;,
        Lcom/samsung/android/share/SShareBixby$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_APPNAME:Ljava/lang/String; = "BIXBY_SHAREVIA_APPNAME"

.field private static final INTENT_DEBUG_APPNAME:Ljava/lang/String; = "com.samsung.android.chooser.DEBUG_APPNAME"

.field private static final TAG:Ljava/lang/String; = "SShareBixby"

.field private static final USE_DISTANCE:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field mBixbyGetDataReceiver:Landroid/content/BroadcastReceiver;

.field private mCandidatesByPkg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDebugAppName:Ljava/lang/String;

.field mDebugAppNameReceiver:Landroid/content/BroadcastReceiver;

.field private mDuplicateLabelIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field final mHandler:Landroid/os/Handler;

.field private mIsBixbyDone:Z

.field private mIsInBixbyState:Z

.field private mLabel:Ljava/lang/String;

.field private mMatchedAppIndex:I

.field private mMatchedAppLabel:Ljava/lang/String;

.field private mMatchedAppType:I

.field private mPackage:Ljava/lang/String;

.field private mPkgsWithRule:[Ljava/lang/String;

.field private mReceiverRegistered:Z

.field private mSlotAppName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mDebugAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/share/SShareBixby;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/share/SShareBixby;)Lcom/samsung/android/share/executor/ExecutorCommandHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/share/SShareBixby;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/share/SShareBixby;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppType:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mPkgsWithRule:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mSlotAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby;->mDebugAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/share/SShareBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/share/SShareBixby;->mIsInBixbyState:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby;->mSlotAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/share/SShareBixby;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareBixby;->getCandidates()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareBixby;->parsingTargetInfoByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/share/SShareBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareBixby;->initializeVariables()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareBixby;->splitPackageClassValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareBixby;->splitSlotValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/share/SShareBixby$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareBixby$1;-><init>(Lcom/samsung/android/share/SShareBixby;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mBixbyGetDataReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/share/SShareBixby$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareBixby$2;-><init>(Lcom/samsung/android/share/SShareBixby;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mDebugAppNameReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    iput-object p4, p0, Lcom/samsung/android/share/SShareBixby;->mPkgsWithRule:[Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResolveListAdapter()Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareBixby;->createExecutorCommandHandler()V

    return-void
.end method

.method private StringReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "[[?][$]\\(\\)\\{\\}[*][+]\\^[|]\\[\\]\\n!#%&@`:;~,<>.~\'-=]"

    const-string/jumbo v1, "\\s"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private StringReplaceSmartView(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "[[?][$]\\(\\)\\{\\}[*][+]\\^[|]\\[\\]\\n!#%&@`:;~,<>.~\'-=]"

    const-string/jumbo v1, "Smart View"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private addReceiverForBixby()V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/share/SShareBixby;->mReceiverRegistered:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SShareBixby"

    const-string/jumbo v2, "already registerReceiver!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.chooser.ACTION_EM_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby;->mBixbyGetDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/share/SShareBixby;->mReceiverRegistered:Z

    const-string/jumbo v1, "SShareBixby"

    const-string/jumbo v2, "registerReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addReceiverForDebugAppName()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.chooser.DEBUG_APPNAME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby;->mDebugAppNameReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private checkDirectShareItem(I)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareBixby;->StringReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareBixby;->StringReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkTargetHasRule(Ljava/lang/String;)Z
    .locals 5

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby;->mPkgsWithRule:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby;->mPkgsWithRule:[Ljava/lang/String;

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby;->mPkgsWithRule:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SShareBixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has callee rule"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "SShareBixby"

    const-string/jumbo v3, "no pkg has callee rule"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private findMatchedItemForApplicationLabel(Ljava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-direct {p0, v4}, Lcom/samsung/android/share/SShareBixby;->checkDirectShareItem(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/share/SShareBixby;->checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SShareBixby"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "matched by application label: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private findMatchedItemForDisplayLabel(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/share/SShareBixby;->checkDirectShareItem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/share/SShareBixby;->checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SShareBixby"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "matched by display label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getCandidates()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareBixby;->getCandidatesFromPackageLabel()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareBixby;->getCandidatesFromPackage()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/share/SShareBixby;->getCandidatesFromLabel()Z

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "Package and Label is null, No candidate!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private getCandidatesByPackageName(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v8, "SShareBixby"

    const-string/jumbo v9, "getCandidatesByPackageName: pkg is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    const-string/jumbo v8, "com.samsung.android.app.simplesharing"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8, v10}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, -0x1

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_9

    invoke-direct {p0, v3}, Lcom/samsung/android/share/SShareBixby;->checkDirectShareItem(I)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "com.samsung.android.oneconnect"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8, v11}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, -0x2

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "com.android.settings"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "com.samsung.android.smartmirroring"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, -0x3

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v8, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v8, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v8, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    :goto_3
    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "SShareBixby"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "already name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is in candidate list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_7
    if-nez v1, :cond_2

    iget-object v8, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    const-string/jumbo v8, "SShareBixby"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCandidatesByPkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method private getCandidatesFromLabel()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetByAppName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCandidatesFromPackage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareBixby;->getCandidatesByPackageName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCandidatesFromPackageLabel()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareBixby;->getCandidatesByPackageName(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetByAppName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareBixby;->StringReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareBixby;->StringReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v5, v11, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v9, v11, 0x1

    new-array v0, v5, [I

    new-array v7, v5, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aput v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_1
    if-ge v4, v9, :cond_3

    const/4 v11, 0x0

    aput v4, v7, v11

    const/4 v2, 0x1

    :goto_2
    if-ge v2, v5, :cond_2

    const/4 v6, 0x0

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {p2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_1

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v11, v2, -0x1

    aget v11, v0, v11

    add-int v8, v11, v6

    aget v11, v0, v2

    add-int/lit8 v3, v11, 0x1

    add-int/lit8 v11, v2, -0x1

    aget v11, v7, v11

    add-int/lit8 v1, v11, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object v10, v0

    move-object v0, v7

    move-object v7, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v5, -0x1

    aget v11, v0, v11

    return v11
.end method

.method private initializeVariables()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mSlotAppName:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppType:I

    const/16 v0, -0x64

    iput v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppIndex:I

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    return-void
.end method

.method private isValidDistance(I)Z
    .locals 2

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "no valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private parsingTargetInfoByPackageName(Ljava/lang/String;)Z
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v10, "SShareBixby"

    const-string/jumbo v11, "parsingTargetInfoByPackageName: pkg is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_0
    const-string/jumbo v10, "com.samsung.android.app.simplesharing"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v10, v13}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetInfo(Ljava/lang/String;I)V

    const/4 v8, 0x1

    :cond_1
    :goto_0
    return v8

    :cond_2
    const-string/jumbo v10, "com.samsung.android.oneconnect"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v10, v12}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x2

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetInfo(Ljava/lang/String;I)V

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v10, "com.android.settings"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "com.samsung.android.smartmirroring"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x3

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetInfo(Ljava/lang/String;I)V

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_8

    invoke-direct {p0, v3}, Lcom/samsung/android/share/SShareBixby;->checkDirectShareItem(I)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v10, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v10, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v10, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-ne v10, v12, :cond_9

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v5, v10}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetInfo(Ljava/lang/String;I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mClass:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mClass:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-le v10, v12, :cond_1

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mClass:Ljava/lang/String;

    invoke-virtual {p0, p1, v10}, Lcom/samsung/android/share/SShareBixby;->getShortClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v10, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v10, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/share/SShareBixby;->getShortClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v9, :cond_a

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v5, v10}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetInfo(Ljava/lang/String;I)V

    const/4 v8, 0x1

    goto :goto_3
.end method

.method private removeReceiverForBixby()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mBixbyGetDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareBixby;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mBixbyGetDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareBixby;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private sendStateCommandResponse(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "sendResponse: mExecutorCommandHandler is null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMatchedTargetByAppName(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_c

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/share/SShareBixby;->checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v4, v6}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/share/SShareBixby;->checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareBixby;->findMatchedItemForDisplayLabel(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareBixby;->findMatchedItemForApplicationLabel(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_b

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetInfo(Ljava/lang/String;I)V

    const/4 v3, 0x1

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    const-string/jumbo v4, "SShareBixby"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matched by label: type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " label="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v4, v7}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/share/SShareBixby;->checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/share/SShareBixby;->StringReplaceSmartView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/share/SShareBixby;->checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "Smart View"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/share/SShareBixby;->checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    const/4 v5, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/samsung/android/share/SShareCommon;->getMenuName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/share/SShareBixby;->checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mFeature:Lcom/samsung/android/share/SShareCommon;

    sget v5, Lcom/samsung/android/share/SShareConstants;->SUPPORT_DEVICE_SHARE:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "Samsung Connect"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/share/SShareBixby;->checkExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    const/4 v5, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v7, :cond_4

    const-string/jumbo v4, "SShareBixby"

    const-string/jumbo v5, "no label.. but only one candidate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/share/SShareBixby;->mCandidatesByPkg:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetInfo(Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method private setMatchedTargetByDistance(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/SShareBixby;->getDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    if-ge v0, p3, :cond_2

    :cond_0
    move p3, v0

    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/share/SShareBixby;->setMatchedTargetInfo(Ljava/lang/String;I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/share/SShareBixby;->getDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private splitPackageClassValue(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mClass:Ljava/lang/String;

    :goto_0
    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby;->mClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    goto :goto_0
.end method

.method private splitSlotValue(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    :goto_0
    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mLabel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createExecutorCommandHandler()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ShareVia"

    new-instance v2, Lcom/samsung/android/share/SShareBixby$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/share/SShareBixby$3;-><init>(Lcom/samsung/android/share/SShareBixby;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->createInstance(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/share/executor/IExecutorCommandListener;)Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    return-void
.end method

.method public getShortClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    return-object p2
.end method

.method public registerReceiverRequestCommand()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareBixby;->addReceiverForBixby()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->requestStateCommand(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public sendAppSelectionForBixby(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/share/SShareBixby;->mIsBixbyDone:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SShareBixby"

    const-string/jumbo v2, "selectedPackage is not done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/share/SShareBixby;->mIsInBixbyState:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "SShareBixby"

    const-string/jumbo v2, "sendAppSelectionForBixby: not in Bixby state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectedPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.bixby.agent.ACTION_CHOOSER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.bixby.agent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "command"

    const-string/jumbo v2, "app_selection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "selectedPackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/samsung/android/share/SShareBixby;->mIsBixbyDone:Z

    invoke-direct {p0, v4}, Lcom/samsung/android/share/SShareBixby;->sendStateCommandResponse(Z)V

    return-void
.end method

.method public sendCancelForBixby()V
    .locals 2

    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "sendCancelForBixby"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareBixby;->mIsBixbyDone:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareBixby;->sendStateCommandResponse(Z)V

    return-void
.end method

.method public sendNlgRequest(I)V
    .locals 4

    new-instance v0, Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    const-string/jumbo v1, "ShareVia"

    invoke-direct {v0, v1}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nlgType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string/jumbo v1, "AppName"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "No"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    const-string/jumbo v2, "ShareVia"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->requestNlg(Ljava/lang/String;Lcom/samsung/android/share/executor/data/NlgRequestInfo;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const-string/jumbo v1, "AppName"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "No"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    const-string/jumbo v1, "AppName"

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby;->mSlotAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "AppName"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "multi"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    const-string/jumbo v1, "method_count"

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby;->mDuplicateLabelIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/share/executor/data/NlgRequestInfo;

    goto :goto_0
.end method

.method public setMatchedTargetInfo(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppType:I

    :goto_0
    iput p2, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppIndex:I

    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppLabel:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppType:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppType:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x4

    if-ne p2, v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppType:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/share/SShareBixby;->mMatchedAppType:I

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/share/SShareBixby;->removeReceiverForBixby()V

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareBixby;->mIsInBixbyState:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "unregisterReceiver: not in Bixby state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SShareBixby;->mExecutorCommandHandler:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareBixby;->mIsBixbyDone:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SShareBixby;->sendStateCommandResponse(Z)V

    :cond_1
    return-void
.end method
