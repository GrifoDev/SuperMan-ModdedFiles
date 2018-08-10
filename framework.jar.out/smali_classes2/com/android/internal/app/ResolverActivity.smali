.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$1;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DRAWER_GUIDE_HIDE:I = 0x4

.field public static final DRAWER_GUIDE_REMOVE:I = 0x8

.field public static final DRAWER_GUIDE_SHOW:I = 0x0

.field private static final GUIDE_ACTIVITY:Ljava/lang/String; = "ResolverGuideActivity"

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.android.internal.app"

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field private static sSProtect:Z


# instance fields
.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field protected mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAdapterView:Landroid/widget/AbsListView;

.field private mAlwaysButton:Landroid/widget/Button;

.field private final mAnimDuration:I

.field protected mAppIconTheme:Ljava/lang/String;

.field protected mBixby:Lcom/samsung/android/share/SShareBixby;

.field protected mBixbySupportingPkgs:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultTitleResId:I

.field protected mDeviceShare:Lcom/samsung/android/share/SShareDeviceShare;

.field protected mDrawerGuide:Landroid/widget/TextView;

.field private mDropComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mExitAnimator:Landroid/animation/Animator;

.field protected mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIconDpi:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsDeskTopMode:Z

.field protected mIsDeviceDefault:Z

.field private mIsDualAppProfile:Z

.field private mIsManagedProfile:Z

.field mIsStopedActivity:Z

.field private mLastSelected:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field protected mLaunchedFromUid:I

.field private mLayoutId:I

.field protected mMaxColumns:I

.field private mOldItemCount:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field protected mPm:Landroid/content/pm/PackageManager;

.field private mPostListReadyRunnable:Ljava/lang/Runnable;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mReferrerPackage:Ljava/lang/String;

.field private mRegistered:Z

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private mResolvingHome:Z

.field private mRetainInOnStop:Z

.field protected mSShareCommon:Lcom/samsung/android/share/SShareCommon;

.field protected mSShareLogging:Lcom/samsung/android/share/SShareLogging;

.field private mSafeForwardingMode:Z

.field protected mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field protected mShareLink:Lcom/samsung/android/share/SShareShareLink;

.field protected mShouldShowDrawerGuide:I

.field protected mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field protected mSmartViewDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field protected mSquicleUX:Z

.field protected mSupportButtons:Z

.field protected mSupportDeviceShare:Z

.field private mSupportsAlwaysUseOption:Z

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ResolverActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mOldItemCount:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/app/ResolverActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->semCreateDisplayResolveInfo(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/app/ResolverActivity;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getFontScale()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->semFinishAfterAnimation()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->semSafelyStartActivtyAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sprotect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->sSProtect:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsStopedActivity:Z

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->IS_OVERLAY_THEMES_ENABLED:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mAnimDuration:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mShouldShowDrawerGuide:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method private checkIfNeedFRPWorkaround()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ResolverActivity"

    const-string/jumbo v2, "Blocked for security reason!! Setup is not completed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v3
.end method

.method private createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-string/jumbo v4, "translationY"

    new-array v5, v12, [F

    aput v13, v5, v10

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v5, v11

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string/jumbo v4, "alpha"

    new-array v5, v12, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v10

    aput v13, v5, v11

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v4, v12, [Landroid/animation/Animator;

    aput-object v1, v4, v10

    aput-object v0, v4, v11

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v2
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "ResolverActivity"

    const-string/jumbo v2, "Exception at getEnterprisePolicyEnabled "

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getFontScale()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v0, 0x3f99999a    # 1.2f

    :cond_0
    return v0
.end method

.method public static getLabelRes(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private hasManagedProfile()Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    if-nez v4, :cond_0

    return v6

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v0

    return v6

    :cond_2
    return v6
.end method

.method private isForKnoxNFC()Z
    .locals 3

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    const/16 v2, 0x403

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0xfff0000

    and-int/2addr p0, v1

    const/high16 v1, 0x300000

    if-lt p0, v1, :cond_0

    const/high16 v1, 0x500000

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mBixby:Lcom/samsung/android/share/SShareBixby;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mBixby:Lcom/samsung/android/share/SShareBixby;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/share/SShareBixby;->sendAppSelectionForBixby(Ljava/lang/String;)V

    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v4, :cond_2

    invoke-interface {p1, p0, v6}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    const/4 v4, 0x0

    invoke-interface {p1, p0, v4, v3}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/4 v4, 0x0

    const/16 v5, -0x2710

    invoke-interface {p1, p0, v4, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to launch as uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", while running in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "??"

    goto :goto_1
.end method

.method private semCreateDisplayResolveInfo(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 7

    const/4 v5, 0x0

    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p1, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-object v0
.end method

.method private semFinishAfterAnimation()V
    .locals 3

    const v1, 0x1020255

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$10;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$10;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private semSafelyStartActivtyAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 3

    const v1, 0x1020255

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ResolverActivity$9;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private semTransitionOverride(Landroid/content/Context;I)V
    .locals 4

    const v3, 0x10a00b1

    const v2, 0x10a00b0

    const/4 v1, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_1
    const v0, 0x10a00b3

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_4
    const v0, 0x10a00b2

    const v1, 0x10a00af

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ResolverActivity"

    const-string/jumbo v3, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    const-string/jumbo v2, "ResolverActivity"

    const-string/jumbo v3, "Attempted to set selection to resolve info for another user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setRoundCornerBackground(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const v1, 0x108087e

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v1

    return v2
.end method

.method private useLayoutWithDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addBixbySupportingPackages(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBixbySupportingPkgs:[Ljava/lang/String;

    return-void
.end method

.method protected addDeviceShareView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceShare:Lcom/samsung/android/share/SShareDeviceShare;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceShare:Lcom/samsung/android/share/SShareDeviceShare;

    invoke-virtual {v0, p1}, Lcom/samsung/android/share/SShareDeviceShare;->setDeviceShareView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected addShareLinkView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareLink:Lcom/samsung/android/share/SShareShareLink;

    invoke-virtual {v0, p1}, Lcom/samsung/android/share/SShareShareLink;->setShareLinkView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareLink:Lcom/samsung/android/share/SShareShareLink;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SShareShareLink;->setShareLinkDri(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    const v0, 0x102041c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    :cond_0
    return-void
.end method

.method bindProfileView()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050274

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getFontScale()F

    move-result v4

    mul-float/2addr v4, v0

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected checkDrawerScrollGuideCondition()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    div-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->semSetShowDrawerScrollGuide(I)V

    :cond_2
    return-void
.end method

.method public configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    new-instance v0, Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v5

    iget v6, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/share/SShareCommon;-><init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    sget v1, Lcom/samsung/android/share/SShareConstants;->SUPPORT_BIXBY:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mBixbySupportingPkgs:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/share/SShareBixby;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBixby:Lcom/samsung/android/share/SShareBixby;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    sget v1, Lcom/samsung/android/share/SShareConstants;->SUPPORT_SHARE_LINK:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/share/SShareShareLink;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mBixby:Lcom/samsung/android/share/SShareBixby;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/share/SShareShareLink;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;Ljava/util/List;Lcom/samsung/android/share/SShareBixby;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareLink:Lcom/samsung/android/share/SShareShareLink;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    sget v1, Lcom/samsung/android/share/SShareConstants;->SUPPORT_LOGGING:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/share/SShareLogging;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    const-string/jumbo v1, "STRT"

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->checkIfNeedFRPWorkaround()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v0, :cond_4

    const v0, 0x109010a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    :goto_1
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x1020435

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->setTitleAndIcon()V

    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    const v0, 0x10900dd

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()Z

    move-result v12

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSmartViewDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/share/SShareCommon;->checkDeviceShareSupport(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportDeviceShare:Z

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    sget v1, Lcom/samsung/android/share/SShareConstants;->SUPPORT_BUTTONS:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportDeviceShare:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/android/share/SShareDeviceShare;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSamsungConnectDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSmartViewDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/share/SShareDeviceShare;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceShare:Lcom/samsung/android/share/SShareDeviceShare;

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x10900de

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    :goto_2
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v9

    if-eqz v12, :cond_9

    const/4 v0, 0x1

    if-ne v9, v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportDeviceShare:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowShareLink()Z

    move-result v0

    :goto_3
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v13}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const v0, 0x1020435

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    if-nez v9, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get1(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportDeviceShare:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowShareLink()Z

    move-result v0

    :goto_4
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    :goto_5
    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->checkDrawerScrollGuideCondition()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowShareLink()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareLink:Lcom/samsung/android/share/SShareShareLink;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareShareLink;->setUpShareLinkView()V

    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    goto :goto_5
.end method

.method public createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createListController()Lcom/android/internal/app/ResolverListController;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V

    return-object v0
.end method

.method protected createListController()Lcom/android/internal/app/ResolverListController;
    .locals 6

    new-instance v0, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;I)V

    return-object v0
.end method

.method dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    invoke-direct {p0, p0, v0}, Lcom/android/internal/app/ResolverActivity;->semTransitionOverride(Landroid/content/Context;I)V

    return-void
.end method

.method protected getGuideActivity()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-string/jumbo v2, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLayoutResource()I
    .locals 1

    const v0, 0x109010a

    return v0
.end method

.method protected getReferrerPackageName()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v2, "android-app"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getReferrer error!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p2
.end method

.method public getResolveListAdapter()Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isTablet()Z
    .locals 2

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget v6, v0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    return-object v6

    :cond_1
    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget v6, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    return-object v1

    :cond_3
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_6
    :goto_2
    if-eqz v1, :cond_d

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxIcon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_7
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_8
    sget-boolean v6, Lcom/android/internal/app/ResolverActivity;->sSProtect:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->isLock(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_9
    return-object v1

    :cond_a
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAppIconTheme:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_b
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_c
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v6, "ResolverActivity"

    const-string/jumbo v7, "Couldn\'t find resources for package"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_e
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v1, v8}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_f
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_10
    return-object v1

    :cond_11
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    return-object v6
.end method

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->semFinishAfterAnimation()V

    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    const v1, 0x1020225

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string/jumbo v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    const v11, 0x10303f7

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v11, "user"

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/app/ResolverActivity;->mIsManagedProfile:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/app/ResolverActivity;->mIsDualAppProfile:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-nez p7, :cond_0

    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const-string/jumbo v11, "true"

    const/4 v12, 0x0

    aput-object v11, v9, v12

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v13, "isShareListAllowed"

    invoke-direct {p0, v11, v12, v13, v9}, Lcom/android/internal/app/ResolverActivity;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v11, "ResolverActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onCreate(): isShareListAllowed("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_0

    const-string/jumbo v11, "ResolverActivity"

    const-string/jumbo v12, "onCreate(): ShareList is not allowed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v11

    iput v11, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e007a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "current_sec_appicon_theme_package"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mAppIconTheme:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->semCheckSquicleUXRequired()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z

    const-string/jumbo v11, "desktopmode"

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isTaskRoot()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "ResolverActivity"

    const-string/jumbo v12, "isTaskRoot"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->exitFreeformMode()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    const-string/jumbo v11, "ResolverActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mLaunchedFromPackage = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget v11, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v11, :cond_2

    iget v11, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :catch_0
    move-exception v5

    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v11, "ResolverActivity"

    const-string/jumbo v12, "Cannot exit FreeformMode"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeskTopMode:Z

    goto :goto_1

    :catch_2
    move-exception v5

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    const-string/jumbo v11, "ResolverActivity"

    const-string/jumbo v12, "mLaunchedFromPackage = null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v12, v13}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    const-string/jumbo v11, "activity"

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v11

    iput v11, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    move/from16 v0, p4

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {p0, v11, v0, v1}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_5

    return-void

    :cond_5
    const v11, 0x1020255

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v8, :cond_7

    new-instance v11, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v11, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    :cond_6
    iput-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v11, p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->semSetParentActivity(Lcom/android/internal/app/ResolverActivity;)V

    const v11, 0x102048c

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mDrawerGuide:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v11, :cond_a

    iget-boolean v11, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v11, :cond_a

    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ResolverActivity;->semSetShowDrawerScrollGuide(I)V

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->semForceCollapseAtFirst(Z)V

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->semIgnoreDrag(Z)V

    :cond_7
    :goto_3
    const v11, 0x102041c

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v12, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v12, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v11}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x1c3

    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v11, 0x0

    invoke-direct {p0, p0, v11}, Lcom/android/internal/app/ResolverActivity;->semTransitionOverride(Landroid/content/Context;I)V

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->semGetDrawerScrollGuideVisible()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/app/ResolverActivity;->semSetShowDrawerScrollGuide(I)V

    goto :goto_3

    :cond_b
    const/16 v11, 0x1c5

    goto :goto_4

    :cond_c
    const-string/jumbo v12, ""

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get2(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get2(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->destroy()V

    :cond_2
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->forceHandlePackagesChanged()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBixby:Lcom/samsung/android/share/SShareBixby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBixby:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareBixby;->unregisterReceiver()V

    :cond_0
    return-void
.end method

.method public onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    :goto_0
    instance-of v4, p1, Landroid/widget/GridView;

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    move-object v4, p1

    check-cast v4, Landroid/widget/GridView;

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsStopedActivity:Z

    return-void
.end method

.method public onSetupVoiceInteraction()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    return-void
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsStopedActivity:Z

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ResolverActivity"

    const-string/jumbo v4, "we don\'t finish resolver for this exceptional case"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_2
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 47

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v41

    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v27

    :goto_0
    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-eqz v3, :cond_15

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v23

    :goto_1
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v27, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v23, v27

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v7, 0xfff0000

    and-int v15, v3, v7

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    const/high16 v3, 0x600000

    if-ne v15, v3, :cond_5

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_5

    :try_start_0
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    const/high16 v3, 0x600000

    if-ne v15, v3, :cond_6

    const-string/jumbo v3, "file"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "content"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    :cond_6
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, v41

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v34

    if-eqz v34, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v42

    :cond_7
    if-eqz v42, :cond_8

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/PatternMatcher;

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v33 .. v33}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v33 .. v33}, Landroid/os/PatternMatcher;->getType()I

    move-result v7

    invoke-virtual {v4, v3, v7}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_8
    move-object/from16 v0, v41

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    if-eqz v11, :cond_a

    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_9

    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v38

    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v7

    if-ltz v38, :cond_e

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v7, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, v41

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v34

    if-eqz v34, :cond_c

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v36

    :cond_b
    if-eqz v36, :cond_c

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/PatternMatcher;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {v33 .. v33}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v33 .. v33}, Landroid/os/PatternMatcher;->getType()I

    move-result v7

    invoke-virtual {v4, v3, v7}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_c
    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get0(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_f

    const/16 v31, 0x1

    :goto_5
    if-nez v31, :cond_10

    new-array v6, v9, [Landroid/content/ComponentName;

    :goto_6
    const/4 v5, 0x0

    const/16 v26, 0x0

    :goto_7
    move/from16 v0, v26

    if-ge v0, v9, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    move/from16 v0, v26

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v39

    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v39

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-direct {v3, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v6, v26

    move-object/from16 v0, v39

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v5, :cond_d

    move-object/from16 v0, v39

    iget v5, v0, Landroid/content/pm/ResolveInfo;->match:I

    :cond_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    :catch_0
    move-exception v22

    const-string/jumbo v3, "ResolverActivity"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_f
    const/16 v31, 0x0

    goto :goto_5

    :cond_10
    add-int/lit8 v3, v9, 0x1

    new-array v6, v3, [Landroid/content/ComponentName;

    goto :goto_6

    :cond_11
    if-eqz v31, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get0(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v6, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get0(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v0, v5, :cond_12

    move/from16 v5, v32

    :cond_12
    move-object/from16 v0, v41

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object/from16 v0, v41

    iget v3, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v7, -0x2

    if-eq v3, v7, :cond_13

    const/16 p2, 0x0

    :cond_13
    if-eqz p2, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v43

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    invoke-static/range {v43 .. v43}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string/jumbo v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "KEA App is selected for user : "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v45, " Doesn\'t add as a preferredActivity"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "android.intent.action.MAIN"

    if-ne v3, v7, :cond_14

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v7, "android.intent.category.HOME"

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_14
    move-object/from16 v0, v41

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_19

    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, v41

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    :cond_15
    :goto_9
    if-eqz p1, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    const-string/jumbo v7, "CROS"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "_"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v3, v7, v0}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    const-string/jumbo v7, "APPP"

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v3, v7, v0}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, v41

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v43

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static/range {v43 .. v43}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string/jumbo v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Launch NFC app "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v45, " for container "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/UserHandle;

    move/from16 v0, v43

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v7, v3}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    const/4 v3, 0x1

    return v3

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string/jumbo v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Add NFC default pref "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v45, "for user "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManager;->addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    goto/16 :goto_8

    :cond_18
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto/16 :goto_8

    :cond_19
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v35

    if-eqz v20, :cond_1a

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    :goto_a
    if-eqz v21, :cond_1c

    const-string/jumbo v3, "http"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string/jumbo v3, "https"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    :goto_b
    if-eqz v12, :cond_1d

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    :goto_c
    if-eqz v18, :cond_1e

    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    :goto_d
    if-eqz v28, :cond_15

    if-eqz v29, :cond_15

    if-eqz v25, :cond_15

    const/4 v3, 0x2

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move/from16 v2, v43

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    goto/16 :goto_9

    :cond_1a
    const/16 v21, 0x0

    goto :goto_a

    :cond_1b
    const/16 v28, 0x1

    goto :goto_b

    :cond_1c
    const/16 v28, 0x0

    goto :goto_b

    :cond_1d
    const/16 v29, 0x0

    goto :goto_c

    :cond_1e
    const/16 v25, 0x0

    goto :goto_d

    :cond_1f
    :try_start_1
    const-string/jumbo v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Set last activity pref for user "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v3

    if-eqz v3, :cond_20

    const-string/jumbo v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Attach user list with only one element "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v44, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v45, 0x0

    aput-object v7, v3, v45

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v3, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get2(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception v40

    const-string/jumbo v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Error calling setLastChosenActivity\n"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_21
    invoke-static/range {v43 .. v43}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    const/16 v7, 0x403

    if-ne v3, v7, :cond_22

    const-string/jumbo v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Launch NFC app "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v45, "for DUAL IM "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/UserHandle;

    move/from16 v0, v43

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v7, v3}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    const/4 v3, 0x1

    return v3

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v3, :cond_23

    if-eqz p2, :cond_23

    if-eqz v27, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    sget v7, Lcom/samsung/android/share/SShareConstants;->SUPPORT_RESOLVER_GUIDE:I

    invoke-virtual {v3, v7}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mIsStopedActivity:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_23

    new-instance v24, Lcom/android/internal/app/ResolverGuideDialogFragment;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverGuideDialogFragment;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/app/ResolverActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverGuideDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, Lcom/android/internal/app/ResolverActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverGuideDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v7, "ResolverGuideDialogFragment"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v7}, Lcom/android/internal/app/ResolverGuideDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :cond_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->semSafelyStartActivtyAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_24
    const/4 v3, 0x1

    return v3
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2

    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public resetAlwaysOrOnceButtonBar()V
    .locals 7

    const v6, 0x1080a50

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v1, :cond_0

    const v1, 0x1020226

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v1, 0x1020225

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const v1, 0x1020228

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    sget v2, Lcom/samsung/android/share/SShareConstants;->SUPPORT_SHOW_BUTTON_SHAPES:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SShareCommon;->isFeatureSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    invoke-direct {p0, v3, v1, v5}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    const-string/jumbo v1, "ResolverActivity"

    const-string/jumbo v2, "Layout unexpectedly does not have a button bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    invoke-direct {p0, v3, v1, v3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    throw v0
.end method

.method semCheckSquicleUXRequired()Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tap_to_icon"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public semGetDrawerGuideView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDrawerGuide:Landroid/widget/TextView;

    return-object v0
.end method

.method public semGetDrawerScrollGuideVisible()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mShouldShowDrawerGuide:I

    return v0
.end method

.method public semGetTopPanelCount()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowShareLink()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportDeviceShare:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public semIsShouldShowViewHolder(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ViewHolder;->semIsAlwaysShow()Z

    move-result v0

    return v0
.end method

.method public semSetDrawerScrollGuideWidth(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDrawerGuide:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDrawerGuide:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDrawerGuide:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public semSetShowDrawerScrollGuide(I)V
    .locals 2

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mShouldShowDrawerGuide:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mShouldShowDrawerGuide:I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDrawerGuide:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDrawerGuide:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public semSetupSecResolverTitle(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get1(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I

    move-result v6

    if-nez v6, :cond_0

    const v6, 0x1020016

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const v6, 0x10204a6

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v6, 0x10204a7

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v6, 0x10204a9

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105027a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v0, v6

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getFontScale()F

    move-result v6

    mul-float/2addr v6, v0

    invoke-virtual {v4, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v6, 0x10204a8

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->mIsManagedProfile:Z

    if-eqz v6, :cond_4

    const v6, 0x1040a7f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/internal/app/ResolverActivity;->setRoundCornerBackground(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_4
    const v6, 0x1040a80

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public sendVoiceChoicesIfNeeded()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    const/4 v1, 0x0

    array-length v0, v2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    return-void
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDropComponent(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setRetainInOnStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    return-void
.end method

.method public setTitleAndIcon()V
    .locals 11

    const v9, 0x1020016

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get1(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_5

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->semSetupSecResolverTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v7, 0x102052c

    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const v7, 0x1020006

    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v2

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    new-instance v7, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v7, p0, v2, v3}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v8, v10, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not find referrer package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowShareLink()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareLink:Lcom/samsung/android/share/SShareShareLink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareLink:Lcom/samsung/android/share/SShareShareLink;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareShareLink;->isShareLinkEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method protected startActivtyAsUserAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 9

    const v0, 0x1020255

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_0

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "ResolverActivity"

    const-string/jumbo v1, "startActivity failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$8;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public startBixbySelection(II)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBixbySelection: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "ResolverActivity"

    const-string/jumbo v2, "startBixbySelection: failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mShareLink:Lcom/samsung/android/share/SShareShareLink;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mShareLink:Lcom/samsung/android/share/SShareShareLink;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareShareLink;->shareLinkItemClick()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceShare:Lcom/samsung/android/share/SShareDeviceShare;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceShare:Lcom/samsung/android/share/SShareDeviceShare;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareDeviceShare;->deviceShareItemClick()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startSelected(IZZ)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x1c7

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x1c4

    :goto_1
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_3
    return-void

    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x1c8

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x1c9

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_6
    const/16 v2, 0x1c6

    goto :goto_1
.end method
