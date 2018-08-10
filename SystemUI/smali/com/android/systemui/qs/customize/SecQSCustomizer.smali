.class public Lcom/android/systemui/qs/customize/SecQSCustomizer;
.super Landroid/widget/LinearLayout;
.source "SecQSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/SecQSCustomizer$1;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$2;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$3;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$4;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$5;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    }
.end annotation


# instance fields
.field private ACTIVE_LEFT_INDICATOR:I

.field private ACTIVE_RIGHT_INDICATOR:I

.field private ACTIVE_ROWS:I

.field private final ACTIVE_TO_AVAILABLE:I

.field private AVAILABLE_ROWS:I

.field private final AVAILABLE_TO_ACTIVE:I

.field private final CUSTOMIZER_TILES_SETTINGS_ERROR:I

.field private final CUSTOMIZER_TILES_SETTINGS_OK:I

.field private final DURATION_EDIT:J

.field private final DURATION_PANEL:J

.field private INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private final MSG_HANDLE_ANIMATE_AREA:I

.field private final MSG_HANDLE_ANIMATE_DROP:I

.field private final MSG_HANDLE_ANIMATE_PAGE:I

.field private final MSG_HANDLE_ANIMATE_START:I

.field private isShown:Z

.field private mActiveColumns:I

.field private mActiveRows:I

.field private mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field protected mCellHeight:I

.field protected mCellMargin:I

.field private mCellMarginTop:I

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomizing:Z

.field protected mDividerHeight:I

.field private mDoneButton:Landroid/widget/TextView;

.field mDragListener:Landroid/view/View$OnDragListener;

.field private mDragStart:Z

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mFinishedFetchingTiles:Z

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field protected mIsClosing:Z

.field private mIsDroppedOnView:Z

.field protected mIsOpening:Z

.field private mLeftIndicator:Landroid/widget/FrameLayout;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field private mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

.field private mMinNum:I

.field private mNewCustomTileList:Ljava/lang/String;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mResetButton:Landroid/widget/TextView;

.field private mRightIndicator:Landroid/widget/FrameLayout;

.field private mShadowBuilder:Landroid/view/View$DragShadowBuilder;

.field private mToast:Landroid/widget/Toast;

.field private mTranstionAnimator:Landroid/animation/AnimatorSet;

.field private mWhereAmI:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/view/View$DragShadowBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/CustomizeTileView;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateArea(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateCurrentPage(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animatePage(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animationDrop()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animationStart()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->done()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->reset()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/16 v8, 0x7d0

    const/16 v7, 0x3e8

    const/4 v6, -0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f13028e

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x10a

    iput-wide v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->DURATION_EDIT:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->DURATION_PANEL:J

    iput v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_TO_AVAILABLE:I

    iput v8, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->AVAILABLE_TO_ACTIVE:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_START:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_DROP:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_PAGE:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_AREA:I

    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsOpening:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->CUSTOMIZER_TILES_SETTINGS_ERROR:I

    iput v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->CUSTOMIZER_TILES_SETTINGS_OK:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCustomTileList:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_ROWS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->AVAILABLE_ROWS:I

    iput v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    iput v8, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragStart:Z

    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    iput v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    iput v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    iput-boolean v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mFinishedFetchingTiles:Z

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0199

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupPager()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    return-void
.end method

.method private addActivieTile()V
    .locals 8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->isCustomTile:Z

    if-eqz v5, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, v6, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v7, 0x7f12003c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v7, 0x7f120894

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v5, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addTile(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->appLabel:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isNewCustomTile(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v6, 0x7f12003c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v6, 0x7f120895

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private animateArea(II)V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iput p2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private animateCurrentPage(I)V
    .locals 4

    const/16 v3, 0x66

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    const/16 v2, 0xca

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private animatePage(I)V
    .locals 4

    const/16 v3, 0x66

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    iput p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private animationDrop()V
    .locals 7

    const/16 v6, 0x65

    const/4 v2, 0x0

    new-instance v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    const/16 v5, 0xc9

    iput v5, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v5, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    const-string/jumbo v6, "custom("

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v6, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    const/16 v6, 0x1388

    if-ne v5, v6, :cond_2

    const-string/jumbo v0, "3005"

    :goto_1
    sget-object v5, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v4, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "3004"

    goto :goto_1
.end method

.method private animationStart()V
    .locals 4

    const/16 v3, 0x64

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    const/16 v2, 0xc8

    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private close()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTranstionAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTranstionAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->save()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->transition(ZLandroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->resetNewCustomTileList()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShadeLockedState()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string/jumbo v1, "292"

    invoke-static {v1}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "202"

    invoke-static {v1}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private done()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->verifyTilesSettings()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f120a35

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->close()V

    :cond_1
    return-void
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "SecQSCustomizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :catch_0
    move-exception v0

    return v2
.end method

.method private isNewCustomTile(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v1, "custom("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCustomTileList:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 6

    const v4, 0x7f12003c

    const/16 v5, 0x3e8

    iget-object v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    if-ne v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getMinimumTileNum()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    if-gt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->showToast()V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v4, 0x7f120895

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/qs/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    :goto_0
    if-ne v1, v5, :cond_2

    const/16 v2, 0x1770

    :goto_1
    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const v4, 0x7f120894

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/qs/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1388

    goto :goto_1
.end method

.method private queryTiles()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mFinishedFetchingTiles:Z

    new-instance v0, Lcom/android/systemui/qs/customize/-$Lambda$0-m0G3MynxY8eWh9fDhAV0eGBHw$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/-$Lambda$0-m0G3MynxY8eWh9fDhAV0eGBHw$1;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private recalcSpecs()V
    .locals 12

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v9, "SecQSCustomizer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mCurrentSpecs = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "mAllTiles size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    const-class v9, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v9}, Lcom/android/systemui/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v7, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string/jumbo v9, "Wifi,Location,SoundMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,Flashlight,WifiHotspot,SmartStay,Nfc,custom(com.android.nfc/com.samsung.android.nfc.quicktile.NfcTile),custom(com.android.settings/com.samsung.android.settings.qstile.PowerSavingTile),BlueLightFilter"

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    const/4 v3, 0x0

    :goto_1
    array-length v9, v8

    if-ge v3, v9, :cond_3

    aget-object v9, v8, v3

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    const/4 v2, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mOtherTiles:Ljava/util/List;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->addTile(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    iget v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    iget v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColumns:I

    mul-int/2addr v9, v10

    div-int v9, v0, v9

    add-int/lit8 v4, v9, 0x1

    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v9, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v9, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setOffscreenPageLimit(I)V

    return-void
.end method

.method private removeAreaAnimationMessage()V
    .locals 2

    const/16 v1, 0x67

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 14

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v10, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v10}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    iget-object v12, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f12092e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v10, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v10}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v10, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v10}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_0
    if-ge v10, v12, :cond_3

    aget-object v9, v11, v10

    iget-object v13, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v13, v9}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v13, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v13, v8}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v2, v8

    :goto_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v13, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iget-object v13, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v13, v8}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v13, v9}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    return-void

    :cond_4
    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v10, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v10, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTileHost;->resetRemovedTileList()V

    return-void
.end method

.method private save()V
    .locals 6

    const-string/jumbo v3, "SecQSCustomizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentSpecs =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileHost;->getHiddenTileSpec()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SecQSCustomizer"

    const-string/jumbo v4, "save none : same list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private setCustomizing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    return-void
.end method

.method private setTileSpecs()V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpIndicator()V
    .locals 7

    iget v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMarginTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDividerHeight:I

    iget v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    mul-int/2addr v5, v6

    sub-int v1, v4, v5

    const v4, 0x7f0a03f1

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v4, 0x7f0a022f

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v4, 0x800003

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    const v4, 0x7f0a0230

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v4, 0x800005

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method private setupPager()V
    .locals 8

    const v7, 0x7f0601e8

    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060164

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f0a03f2

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    const v4, 0x7f0a03f3

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setElevation(F)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v4, 0x7f0a03f5

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setElevation(F)V

    const v4, 0x7f0a03f4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f0a0191

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a042a

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showToast()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f120a35

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private transition(ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 10

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setVisibility(I)V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x4

    new-array v9, v1, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    int-to-float v3, v1

    if-eqz p1, :cond_2

    const-wide/16 v6, 0x0

    :goto_1
    const-wide/16 v4, 0x64

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->makeAnimator(Landroid/view/View;FJJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast v1, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v2

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_2
    int-to-float v3, v1

    if-eqz p1, :cond_4

    const-wide/16 v6, 0x0

    :goto_3
    const-wide/16 v4, 0x64

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->makeAnimator(Landroid/view/View;FJJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v9, v2

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :goto_4
    int-to-float v3, v1

    if-eqz p1, :cond_6

    const-wide/16 v6, 0x64

    :goto_5
    const-wide/16 v4, 0x10a

    move-object v1, p0

    move-object v2, p0

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->makeAnimator(Landroid/view/View;FJJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v9, v2

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const v2, 0x7f0a03ad

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    :goto_6
    int-to-float v3, v1

    if-eqz p1, :cond_8

    const-wide/16 v6, 0x10a

    :goto_7
    const-wide/16 v4, 0x10a

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->makeAnimator(Landroid/view/View;FJJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v9, v2

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTranstionAnimator:Landroid/animation/AnimatorSet;

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x10a

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v6, 0x10a

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const-wide/16 v6, 0x0

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const-wide/16 v6, 0x0

    goto :goto_7
.end method

.method private updateQSColoringResources()V
    .locals 4

    const v3, 0x7f0a03fd

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private verifyTilesSettings()I
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    if-ge v1, v2, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hide(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->verifyTilesSettings()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "SecQSCustomizer"

    const-string/jumbo v1, "tiles are less than min. it should be reset."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->reset()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->close()V

    :cond_1
    return-void
.end method

.method public isCustomClosing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    return v0
.end method

.method public isCustomOpening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsOpening:Z

    return v0
.end method

.method public isCustomizing()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_SecQSCustomizer_24749()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/qs/customize/-$Lambda$0-m0G3MynxY8eWh9fDhAV0eGBHw;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/-$Lambda$0-m0G3MynxY8eWh9fDhAV0eGBHw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_SecQSCustomizer_24857()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mFinishedFetchingTiles:Z

    return-void
.end method

.method public makeAnimator(Landroid/view/View;FJJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;
    .locals 5

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p7, :cond_0

    invoke-virtual {v0, p7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const v3, 0x7f07049c

    const v2, 0x3fa66666    # 1.3f

    const v1, 0x3f4ccccd    # 0.8f

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-static {v0, v3, v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-static {v0, v3, v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAllTiles:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->recalcSpecs()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public show(II)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "SecQSCustomizer"

    const-string/jumbo v2, "show customizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsOpening:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QsNewCustomTileList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNewCustomTileList:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setTileSpecs()V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->addActivieTile()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->transition(ZLandroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->queryTiles()V

    const-string/jumbo v1, "203"

    invoke-static {v1}, Lcom/android/systemui/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateResources()Z
    .locals 10

    const v9, 0x7f07049c

    const/4 v4, 0x3

    const/4 v8, 0x1

    const v7, 0x3fa66666    # 1.3f

    const v6, 0x3f4ccccd    # 0.8f

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const v5, 0x7f1208eb

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    const v5, 0x7f12090e

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-static {v3, v9, v6, v7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-static {v3, v9, v6, v7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070520

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    const v3, 0x7f070523

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMargin:I

    const v3, 0x7f070526

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellMarginTop:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07052a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDividerHeight:I

    const v3, 0x7f0b0057

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    :goto_0
    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    :goto_1
    const-class v3, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v4, "qs_tile_column"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColumns:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMaxRows(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMaxRows(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v0, :cond_5

    const v3, 0x7f0805c1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v0, :cond_6

    const v3, 0x7f0805c1

    :goto_3
    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0a03fd

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const v3, 0x7f120896

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0704d2

    invoke-static {v2, v3, v6, v7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_0
    const-class v3, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateQSColoringResources()V

    :cond_1
    return v8

    :cond_2
    const-class v3, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v5, "qs_tile_row"

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_4
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    goto/16 :goto_1

    :cond_4
    const v3, 0x7f0b0064

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto :goto_4

    :cond_5
    const v3, 0x7f0805bf

    goto :goto_2

    :cond_6
    const v3, 0x7f0805bf

    goto :goto_3
.end method
