.class public Lcom/android/systemui/recents/views/TaskView;
.super Lcom/android/systemui/recents/views/FixedSizeFrameLayout;
.source "TaskView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackAnimationHelper$Callbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/samsung/systemui/splugins/recents/views/PluginTaskView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$1;,
        Lcom/android/systemui/recents/views/TaskView$2;,
        Lcom/android/systemui/recents/views/TaskView$3;,
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# static fields
.field public static final DIM_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_OUTLINE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mActionButtonIcon:Landroid/widget/ImageView;

.field private mActionButtonTranslationZ:F

.field private mActionButtonView:Landroid/view/View;

.field private mAngulatedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

.field private mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field private mClipViewInStack:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAnimator:Landroid/animation/ObjectAnimator;

.field private mDisabledAppToast:Landroid/widget/Toast;

.field private mDownTouchPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFabOffsetX:I

.field private mFabOffsetY:I

.field public mFrontMostTaskView:Z

.field protected mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "header_"
    .end annotation
.end field

.field private mIncompatibleAppToastView:Landroid/view/View;

.field private mIsDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mIsScreenRatioModeUpdated:Z

.field private mLastFocusButtonView:Landroid/view/View;

.field private mOutlineAnimator:Landroid/animation/ObjectAnimator;

.field private mRatioButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mRatioButtonIcon:Landroid/widget/ImageView;

.field private mRatioButtonView:Landroid/view/View;

.field private mRoundedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

.field public mScreenRatioMode:I

.field private final mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "task_"
    .end annotation
.end field

.field private mTaskBound:Z

.field protected mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "thumbnail_"
    .end annotation
.end field

.field private mTmpAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTransformAnimation:Landroid/animation/AnimatorSet;

.field private mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "view_bounds_"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/model/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    const-string/jumbo v1, "dimAlphaWithoutHeader"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/recents/views/TaskView$2;

    const-string/jumbo v1, "dimAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/recents/views/TaskView$3;

    const-string/jumbo v1, "viewOutlineAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mIsScreenRatioModeUpdated:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useExpandableHeaderLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f07039d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    new-instance v3, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRoundedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    new-instance v3, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mAngulatedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRoundedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-direct {v3, v2, v0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setHapticFeedbackEnabled(Z)V

    return-void

    :cond_1
    const v3, 0x7f0705af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private cancelDimAnimationIfExists()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private clearFocusEffect(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void
.end method

.method private getButtonList(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeaderButtonList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useExpandableHeaderLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method


# virtual methods
.method public cancelTransformAnimation()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelDimAnimationIfExists()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    return-void
.end method

.method public dismissTask()V
    .locals 3

    move-object v1, p0

    new-instance v0, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    new-instance v2, Lcom/android/systemui/recents/views/TaskView$5;

    invoke-direct {v2, p0, p0}, Lcom/android/systemui/recents/views/TaskView$5;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v1, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mAngulatedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput p2, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->getButtonList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->clearFocusEffect(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->clearFocusEffect(Landroid/view/View;)V

    invoke-direct {p0, p0}, Lcom/android/systemui/recents/views/TaskView;->clearFocusEffect(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskView;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRoundedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput v1, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "TaskView"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " mTask="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " mFrontMostTaskView="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAndUpdateScreenRatioState()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsScreenRatioModeUpdated:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getScreenRatioState(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mScreenRatioMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsScreenRatioModeUpdated:Z

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mScreenRatioMode:I

    return v0
.end method

.method public getDimAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    return v0
.end method

.method public getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    return-object v0
.end method

.method public bridge synthetic getHeaderView()Lcom/samsung/systemui/splugins/recents/views/PluginTaskViewHeader;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    return-object v0
.end method

.method public getScreenRatioButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    return-object v0
.end method

.method public getTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public bridge synthetic getTask()Lcom/samsung/systemui/splugins/recents/model/PluginTask;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    return-object v0
.end method

.method getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    if-eqz p3, :cond_1

    const v0, 0x3f666666    # 0.9f

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/views/TaskView$6;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_3

    invoke-interface {p4, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    goto :goto_0
.end method

.method public isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->isSame(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_30040()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_59445()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_59858()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    return-void
.end method

.method protected measureContents(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->measureChildren(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const v2, 0x7f120971

    invoke-virtual {v7, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-static {v7, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v10, v7, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isAppLockedPackageNotCheckUnlock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v10, v7, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isManagedProfileUserId(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    :goto_1
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12012d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v0, v7, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    const/4 v5, 0x1

    :cond_5
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x115

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2
.end method

.method protected onConfigurationChanged(ILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onConfigurationChanged(ILandroid/graphics/Rect;)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useExpandableHeaderLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v4, 0x1

    const v2, 0x7f0a0519

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    const v2, 0x7f0a051a

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateClipToTaskBar(Landroid/view/View;)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0a0314

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/recents/views/TaskView$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v3, 0x7f120974

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const v5, 0x7f120964

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x7f0a023b

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const v3, 0x7f0a0315

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonIcon:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v7, v7, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    return v7

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v8, 0x7f120b09

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v10, 0x7f1207e8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 v7, 0x0

    return v7

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v7, v7, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->scale(F)V

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v7, :cond_8

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v8, 0x7f120974

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    const/16 v9, 0x33

    invoke-virtual {v6, v9, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    :goto_1
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_4
    const/4 v7, 0x0

    return v7

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    const/16 v9, 0x33

    invoke-virtual {v6, v9, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    :cond_8
    if-ne p1, p0, :cond_4

    if-eqz v1, :cond_4

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, p0, v8}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-direct {v8, v9, p0, v10}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v7, 0x1

    return v7
.end method

.method public onPrepareLaunchTargetForEnterAnimation()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setDimAlphaWithoutHeader(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method onReload(Z)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetNoUserInteractionState()V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFabOffsetX:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFabOffsetY:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    :cond_0
    return-void
.end method

.method public onStartFrontTaskEnterAnimation(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useExpandableHeaderLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    :cond_2
    return-void
.end method

.method public onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelDimAnimationIfExists()V

    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v3

    aput v3, v2, v5

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useExpandableHeaderLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, p3}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(Z)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, v4, p2}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method public onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {p0, v5, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onTaskBound(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonsColor()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    :cond_0
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    return-void
.end method

.method public onTaskStackIdChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->resetNoUserInteractionState()V

    return-void
.end method

.method resetViewProperties()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->reset()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->reset()V

    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Lcom/android/systemui/recents/views/TaskView;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    return-void
.end method

.method public setClipViewInStack(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    :cond_0
    return-void
.end method

.method public setDimAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    return-void
.end method

.method public setDimAlphaWithoutHeader(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    return-void
.end method

.method public setFocusedState(ZZ)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    goto :goto_0
.end method

.method public setNoUserInteractionLockState()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f12098c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionLockState()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f12098d

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setNoUserInteractionState()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldClipViewInStack()Z
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    return v0
.end method

.method public showActionButton(ZI)V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    goto :goto_0
.end method

.method public startNoUserInteractionAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    return-void
.end method

.method public updateButtonsFocus(Z)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/views/TaskView;->getButtonList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_4

    const/4 v2, -0x1

    :goto_1
    add-int v1, v4, v2

    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public updateFloatingActionButtonPosition()V
    .locals 5

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFabOffsetY:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFabOffsetX:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070596

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    sub-int v1, v3, v0

    :cond_0
    return-void
.end method

.method public updateFloatingActionButtonsColor()V
    .locals 7

    const v6, 0x7f0601a2

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget v0, v3, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonBackground:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isOpenThemeApplied()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->useLightOnPrimaryColor:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    :goto_0
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601a7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget v1, v3, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_0
.end method

.method public updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, p0, v2, p2, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->isImmediate()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setAlpha(F)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3, v4}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v4

    aput v4, v3, v5

    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v3}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v4

    aput v4, v3, v5

    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v3}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p3, :cond_7

    filled-new-array {v5, v6}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v7, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Lcom/android/systemui/recents/views/AnimationProps;->createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    goto/16 :goto_0
.end method
