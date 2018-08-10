.class public Landroid/support/v7/app/MediaRouteControllerDialog;
.super Landroid/support/v7/app/AlertDialog;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteControllerDialog$1;,
        Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;,
        Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;,
        Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;,
        Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;,
        Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;,
        Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;
    }
.end annotation


# static fields
.field static final CONNECTION_TIMEOUT_MILLIS:I

.field static final DEBUG:Z


# instance fields
.field private mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mArtIconBackgroundColor:I

.field mArtIconBitmap:Landroid/graphics/Bitmap;

.field mArtIconIsLoaded:Z

.field mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

.field mArtIconUri:Landroid/net/Uri;

.field private mArtView:Landroid/widget/ImageView;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

.field private mCreated:Z

.field private mCustomControlLayout:Landroid/widget/FrameLayout;

.field private mCustomControlView:Landroid/view/View;

.field mDefaultControlLayout:Landroid/widget/FrameLayout;

.field mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private mDialogAreaLayout:Landroid/widget/LinearLayout;

.field private mDialogContentWidth:I

.field private mDisconnectButton:Landroid/widget/Button;

.field private mDividerView:Landroid/view/View;

.field private mExpandableAreaLayout:Landroid/widget/FrameLayout;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

.field private mGroupExpandCollapseButton:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

.field mGroupListAnimationDurationMs:I

.field mGroupListFadeInAnimation:Ljava/lang/Runnable;

.field private mGroupListFadeInDurationMs:I

.field private mGroupListFadeOutDurationMs:I

.field private mGroupMemberRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mGroupMemberRoutesAdded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMemberRoutesRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHasPendingUpdate:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mIsGroupExpanded:Z

.field mIsGroupListAnimating:Z

.field mIsGroupListAnimationPending:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mMediaMainControlLayout:Landroid/widget/LinearLayout;

.field mPendingUpdateAnimationNeeded:Z

.field private mPlaybackControlButton:Landroid/widget/ImageButton;

.field private mPlaybackControlLayout:Landroid/widget/RelativeLayout;

.field final mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field mRouteInVolumeSliderTouched:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mRouteNameTextView:Landroid/widget/TextView;

.field final mRouter:Landroid/support/v7/media/MediaRouter;

.field mState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private mStopCastingButton:Landroid/widget/Button;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

.field private mVolumeControlEnabled:Z

.field private mVolumeControlLayout:Landroid/widget/LinearLayout;

.field mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

.field mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

.field private mVolumeGroupListItemHeight:I

.field private mVolumeGroupListItemIconSize:I

.field private mVolumeGroupListMaxHeight:I

.field private final mVolumeGroupListPaddingTop:I

.field mVolumeSlider:Landroid/widget/SeekBar;

.field mVolumeSliderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/graphics/Bitmap;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/support/v7/app/MediaRouteControllerDialog;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isPauseActionSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/support/v7/app/MediaRouteControllerDialog;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isPlayActionSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/support/v7/app/MediaRouteControllerDialog;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isStopActionSupported()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "MediaRouteCtrlDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/app/MediaRouteControllerDialog;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/support/v7/app/MediaRouteControllerDialog;->CONNECTION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p1, p2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getAlertDialogResolvedTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$1;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListPaddingTop:I

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Landroid/support/v7/mediarouter/R$interpolator;->mr_linear_out_slow_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v0, Landroid/support/v7/mediarouter/R$interpolator;->mr_fast_out_slow_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private animateGroupListItems(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/OverlayListView;->setEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView;->requestLayout()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/MediaRouteControllerDialog$8;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private animateLayoutHeight(Landroid/view/View;I)V
    .locals 6

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->getLayoutHeight(Landroid/view/View;)I

    move-result v2

    move v1, p2

    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$7;

    invoke-direct {v0, p0, v2, p2, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$7;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;IILandroid/view/View;)V

    iget v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private canShowPlaybackControlLayout()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private fadeInAddedRoutes()V
    .locals 11

    const/4 v10, 0x1

    new-instance v3, Landroid/support/v7/app/MediaRouteControllerDialog$12;

    invoke-direct {v3, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$12;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    const/4 v4, 0x0

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v8}, Landroid/support/v7/app/OverlayListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v8}, Landroid/support/v7/app/OverlayListView;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_2

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v8, v2}, Landroid/support/v7/app/OverlayListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v5, v1, v2

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v8, v5}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteGroup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLayoutHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method private getMainControllerHeight(Z)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method private isBitmapRecycled(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIconChanged()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    if-nez v4, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    :goto_2
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    if-nez v4, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    :goto_3
    if-eq v2, v0, :cond_4

    return v5

    :cond_0
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    invoke-virtual {v4}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    invoke-virtual {v4}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    invoke-static {v3, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->uriEquals(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    return v5

    :cond_5
    const/4 v4, 0x0

    return v4
.end method

.method private isPauseActionSupported()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x202

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlayActionSupported()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x204

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStopActionSupported()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rebuildVolumeGroupList(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v3}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getRoutes()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/support/v7/app/MediaRouteDialogHelper;->listUnorderedEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v3}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-static {v3, v4}, Landroid/support/v7/app/MediaRouteDialogHelper;->getItemBoundMap(Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-static {v3, v4, v5}, Landroid/support/v7/app/MediaRouteDialogHelper;->getItemBitmapMap(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v0

    :goto_3
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/support/v7/app/MediaRouteDialogHelper;->getItemsAdded(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/support/v7/app/MediaRouteDialogHelper;->getItemsRemoved(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v3, v7, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v3}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_5

    iget-boolean v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-lez v3, :cond_5

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->animateGroupListItems(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    iput-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    iput-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    goto :goto_1
.end method

.method static setLayoutHeight(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-virtual {v2, v4}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    :try_start_0
    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-virtual {v2, v4}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    :cond_3
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v2, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    move-object v2, v3

    :goto_2
    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v2, :cond_6

    :goto_3
    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MediaRouteCtrlDialog"

    const-string/jumbo v4, "Error creating media controller in setMediaSession."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    goto :goto_2

    :cond_6
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    goto :goto_3
.end method

.method private updateMediaControlVisibility(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method private updatePlaybackControlLayout()V
    .locals 15

    const/16 v13, 0x8

    const/4 v12, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v11, :cond_2

    const/4 v9, 0x0

    :goto_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v1, v11, 0x1

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v11, :cond_3

    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v0, v11, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v11}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPresentationDisplayId()I

    move-result v11

    const/4 v14, -0x1

    if-eq v11, v14, :cond_4

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v14, Landroid/support/v7/mediarouter/R$string;->mr_controller_casting_screen:I

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    const/4 v7, 0x1

    :cond_0
    :goto_2
    iget-object v14, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    move v11, v12

    :goto_3
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v14, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    move v11, v12

    :goto_4
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v11}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v11

    const/4 v14, 0x6

    if-eq v11, v14, :cond_b

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v11}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_c

    const/4 v4, 0x1

    :goto_5
    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v4, :cond_d

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isPauseActionSupported()Z

    move-result v11

    if-eqz v11, :cond_d

    sget v3, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePauseDrawable:I

    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_controller_pause:I

    :goto_6
    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    if-eqz v10, :cond_10

    :goto_7
    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v10, :cond_1

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    invoke-static {v5, v3}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v11}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    goto/16 :goto_0

    :cond_3
    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v11}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v8

    goto/16 :goto_1

    :cond_4
    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v11, :cond_5

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v11}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v14, Landroid/support/v7/mediarouter/R$string;->mr_controller_no_media_selected:I

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    xor-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_7

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v14, Landroid/support/v7/mediarouter/R$string;->mr_controller_no_info_available:I

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_7
    if-eqz v1, :cond_8

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x1

    :cond_8
    if-eqz v0, :cond_0

    iget-object v11, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_9
    move v11, v13

    goto/16 :goto_3

    :cond_a
    move v11, v13

    goto/16 :goto_4

    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_d
    if-eqz v4, :cond_e

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isStopActionSupported()Z

    move-result v11

    if-eqz v11, :cond_e

    sget v3, Landroid/support/v7/mediarouter/R$attr;->mediaRouteStopDrawable:I

    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_controller_stop:I

    goto :goto_6

    :cond_e
    if-nez v4, :cond_f

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isPlayActionSupported()Z

    move-result v11

    if-eqz v11, :cond_f

    sget v3, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePlayDrawable:I

    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_controller_play:I

    goto/16 :goto_6

    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_10
    move v12, v13

    goto/16 :goto_7
.end method

.method private updateVolumeControlLayout()V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x8

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->isVolumeControlAvailable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private static uriEquals(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 2

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method animateGroupListItemsInternal(Ljava/util/Map;Ljava/util/Map;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->size()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->size()I

    move-result v27

    sub-int v13, v26, v27

    const/16 v18, 0x0

    new-instance v17, Landroid/support/v7/app/MediaRouteControllerDialog$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog$9;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/app/OverlayListView;->getFirstVisiblePosition()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/app/OverlayListView;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v14, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/support/v7/app/OverlayListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    add-int v20, v12, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Rect;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v10

    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    :goto_1
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    move/from16 v22, v10

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    const/16 v26, 0x0

    const/16 v27, 0x0

    sub-int v28, v22, v10

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-nez v18, :cond_3

    const/16 v18, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->clearAnimation()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    move/from16 v26, v0

    mul-int v26, v26, v13

    add-int v22, v10, v26

    goto/16 :goto_1

    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    new-instance v26, Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-object/from16 v0, v26

    invoke-direct {v0, v8, v9}, Landroid/support/v7/app/OverlayListView$OverlayObject;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setAlphaAnimation(FF)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeOutDurationMs:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setDuration(J)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v19

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/app/OverlayListView;->addOverlayObject(Landroid/support/v7/app/OverlayListView$OverlayObject;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    move/from16 v26, v0

    mul-int v11, v13, v26

    new-instance v26, Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-object/from16 v0, v26

    invoke-direct {v0, v8, v9}, Landroid/support/v7/app/OverlayListView$OverlayObject;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setTranslateYAnimation(I)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setDuration(J)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v26

    new-instance v27, Landroid/support/v7/app/MediaRouteControllerDialog$10;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/MediaRouteControllerDialog$10;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setAnimationEndListener(Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-void
.end method

.method clearGroupListAnimation(Z)V
    .locals 13

    iget-object v9, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v9}, Landroid/support/v7/app/OverlayListView;->getFirstVisiblePosition()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    iget-object v9, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v9}, Landroid/support/v7/app/OverlayListView;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    iget-object v9, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v9, v4}, Landroid/support/v7/app/OverlayListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    add-int v5, v3, v4

    iget-object v9, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v9, v5}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz p1, :cond_0

    iget-object v9, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget v9, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v9, 0x1

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v8, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_1
    iget-object v9, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v9}, Landroid/support/v7/app/OverlayListView;->stopAnimationAll()V

    if-nez p1, :cond_2

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/support/v7/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    :cond_2
    return-void
.end method

.method clearLoadedBitmap()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    return-void
.end method

.method finishAnimation(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/OverlayListView;->setEnabled(Z)V

    return-void
.end method

.method getDesiredArtHeight(II)I
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    if-lt p1, p2, :cond_0

    iget v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method

.method isVolumeControlAvailable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method loadInterpolator()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    sget-object v1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v6, 0x106000d

    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    sget v3, Landroid/support/v7/mediarouter/R$layout;->mr_controller_material_dialog_b:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->setContentView(I)V

    const v3, 0x102001b

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;

    invoke-direct {v1, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_expandable_area:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/support/v7/app/MediaRouteControllerDialog$2;

    invoke-direct {v6, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$2;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_dialog_area:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/support/v7/app/MediaRouteControllerDialog$3;

    invoke-direct {v6, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$3;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/app/MediaRouterThemeHelper;->getButtonTextColor(Landroid/content/Context;)I

    move-result v0

    const v3, 0x102001a

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    sget v6, Landroid/support/v7/mediarouter/R$string;->mr_controller_disconnect:I

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1020019

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    sget v6, Landroid/support/v7/mediarouter/R$string;->mr_controller_stop_casting:I

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteNameTextView:Landroid/widget/TextView;

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_close:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_custom_control:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_default_control:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/support/v7/app/MediaRouteControllerDialog$4;

    invoke-direct {v2, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$4;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_art:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_control_title_container:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_media_main_control:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_control_divider:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_playback_control:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_control_title:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_control_subtitle:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_control_playback_ctrl:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_volume_control:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    new-instance v3, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-direct {v3, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_volume_group_list:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/OverlayListView;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    new-instance v3, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v6}, Landroid/support/v7/app/OverlayListView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-direct {v3, p0, v6, v7}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v3, v6}, Landroid/support/v7/app/OverlayListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v8, v3}, Landroid/support/v7/app/MediaRouterThemeHelper;->setMediaControlsBackgroundColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    check-cast v3, Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v3, v7}, Landroid/support/v7/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_group_expand_collapse:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    new-instance v6, Landroid/support/v7/app/MediaRouteControllerDialog$5;

    invoke-direct {v6, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$5;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->loadInterpolator()V

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_animation_duration_ms:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_fade_in_duration_ms:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_fade_out_duration_ms:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeOutDurationMs:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iput-boolean v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCreated:Z

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayout()V

    return-void

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x19

    const/4 v1, 0x1

    if-eq p1, v3, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v3, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method startGroupListFadeInAnimation()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->clearGroupListAnimation(Z)V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView;->requestLayout()V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$11;

    invoke-direct {v1, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$11;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method startGroupListFadeInAnimationInternal()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->fadeInAddedRoutes()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    goto :goto_0
.end method

.method update(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    return-void

    :cond_0
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V

    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCreated:Z

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteNameTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->canDisconnect()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "MediaRouteCtrlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t set artwork image with recycled bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->clearLoadedBitmap()V

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolumeControlLayout()V

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updatePlaybackControlLayout()V

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    return-void

    :cond_5
    const/16 v0, 0x8

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method updateArtIconIfNeeded()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isIconChanged()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->cancel(Z)Z

    :cond_2
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method updateLayout()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v2, v4}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_item_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    sget v3, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_item_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    sget v3, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_max_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListMaxHeight:I

    iput-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method updateLayoutHeight(Z)V
    .locals 2

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$6;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$6;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method updateLayoutHeightInternal(Z)V
    .locals 15

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v12}, Landroid/support/v7/app/MediaRouteControllerDialog;->getLayoutHeight(Landroid/view/View;)I

    move-result v8

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    const/4 v13, -0x1

    invoke-static {v12, v13}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v12

    invoke-direct {p0, v12}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateMediaControlVisibility(Z)V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/view/View;->measure(II)V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v12, v8}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    const/4 v1, 0x0

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v12, :cond_0

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    instance-of v12, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Landroid/support/v7/app/MediaRouteControllerDialog;->getDesiredArtHeight(II)I

    move-result v1

    iget-object v13, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-lt v12, v14, :cond_3

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v12

    invoke-direct {p0, v12}, Landroid/support/v7/app/MediaRouteControllerDialog;->getMainControllerHeight(Z)I

    move-result v5

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v12

    if-nez v12, :cond_4

    const/4 v4, 0x0

    :goto_1
    if-lez v11, :cond_1

    iget v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListPaddingTop:I

    add-int/2addr v4, v12

    :cond_1
    iget v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListMaxHeight:I

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-boolean v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v12, :cond_5

    move v9, v4

    :goto_2
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v3, v12, v5

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    iget-object v13, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    sub-int v7, v12, v13

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int v6, v12, v7

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v12, :cond_6

    if-lez v1, :cond_6

    if-gt v3, v6, :cond_6

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-static {v12, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    :goto_3
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v12

    if-eqz v12, :cond_8

    if-gt v3, v6, :cond_8

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_4
    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v12

    if-nez v12, :cond_9

    const/4 v12, 0x1

    :goto_5
    invoke-direct {p0, v12}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateMediaControlVisibility(Z)V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_6
    invoke-direct {p0, v12}, Landroid/support/v7/app/MediaRouteControllerDialog;->getMainControllerHeight(Z)I

    move-result v5

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v3, v12, v5

    if-le v3, v6, :cond_2

    sub-int v12, v3, v6

    sub-int/2addr v9, v12

    move v3, v6

    :cond_2
    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v12}, Landroid/support/v7/app/OverlayListView;->clearAnimation()V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->clearAnimation()V

    if-eqz p1, :cond_b

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v12, v5}, Landroid/support/v7/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-direct {p0, v12, v9}, Landroid/support/v7/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v12, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V

    :goto_7
    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v12, v13}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    invoke-direct/range {p0 .. p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->rebuildVolumeGroupList(Z)V

    return-void

    :cond_3
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto/16 :goto_0

    :cond_4
    iget v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getRoutes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    mul-int v4, v12, v13

    goto/16 :goto_1

    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_6
    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-static {v12}, Landroid/support/v7/app/MediaRouteControllerDialog;->getLayoutHeight(Landroid/view/View;)I

    move-result v12

    iget-object v13, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    if-lt v12, v13, :cond_7

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    const/4 v1, 0x0

    add-int v3, v9, v5

    goto/16 :goto_3

    :cond_8
    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_b
    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v12, v5}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-static {v12, v9}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    iget-object v12, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-static {v12, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    goto :goto_7
.end method

.method updateVolumeGroupItemHeight(Landroid/view/View;)V
    .locals 4

    sget v3, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    invoke-static {v0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
