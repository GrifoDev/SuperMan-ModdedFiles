.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$1;,
        Landroid/view/ViewGroup$2;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$ChildListForAutoFill;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$ViewLocationHolder;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FLAG_ANIMATION_CACHE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SHOW_CONTEXT_MENU_WITH_COORDS:I = 0x20000000

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static final SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mChildrenInterestedInDrag:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDragChild:Landroid/view/View;

.field private mCurrentDragStartEvent:Landroid/view/DragEvent;

.field private mDefaultFocus:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field mFocusedInCluster:Landroid/view/View;

.field protected mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mIsInterestedInDrag:Z

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutCalledWhileSuppressed:Z

.field private mLayoutMode:I

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mLocalPoint:Landroid/graphics/PointF;

.field private mNestedScrollAxes:I

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSemHorizontalScrollbarRectRelativePosX:I

.field private mSemVerticalScrollbarRectRelativePosY:I

.field private mSemX:F

.field private mSemY:F

.field mSuppressLayout:Z

.field private mTempPoint:[F

.field private mTooltipHoverTarget:Landroid/view/View;

.field private mTooltipHoveredSelf:Z

.field private mTransientIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/ViewGroup;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return v0
.end method

.method static synthetic -get3(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Landroid/view/ViewGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x20000

    const/high16 v1, 0x40000

    const/high16 v2, 0x60000

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    const/4 v0, 0x0

    sput v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    new-instance v0, Landroid/view/ViewGroup$1;

    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    iput v0, p0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRectRelativePosX:I

    iput v0, p0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRectRelativePosY:I

    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    array-length v2, v0

    if-ne p2, v1, :cond_2

    if-ne v2, v1, :cond_0

    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ge p2, v1, :cond_4

    if-ne v2, v1, :cond_3

    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    :goto_1
    aput-object p1, v0, p2

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1

    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_0

    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2

    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, 0x400000

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/animation/LayoutTransition;->cancel(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v6, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_3
    if-eqz p4, :cond_d

    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    if-gez p2, :cond_4

    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    if-eqz p4, :cond_e

    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_7

    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v6, v9

    if-nez v6, :cond_7

    iget-boolean v3, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    iput-boolean v8, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    iget-object v6, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    invoke-virtual {p1, v6, v7}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    iget-boolean v6, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    :cond_6
    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    iget v6, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_9

    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, p1, v10}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_b
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-eqz v6, :cond_f

    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_f

    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt p2, v4, :cond_c

    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_e
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto/16 :goto_1

    :cond_f
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v6, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_2

    const/4 v8, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    const/4 v8, 0x1

    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v9, :cond_1

    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v3, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    if-eqz v8, :cond_2

    iget-boolean v2, p1, Landroid/view/MotionEvent;->mRecycled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    :goto_0
    if-eqz v11, :cond_2

    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iget-object v2, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_1

    if-nez v10, :cond_0

    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_0
    iput-object v9, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    :cond_1
    move-object v10, v11

    move-object v11, v9

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v11, :cond_2

    iget-object v9, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    iget-object v2, v11, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_1

    if-nez v10, :cond_0

    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_0
    iput-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    :cond_1
    move-object v10, v11

    move-object v11, v9

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearCachedLayoutMode()V
    .locals 1

    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    :cond_0
    return-void
.end method

.method private clearTouchTargets()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    move-object v1, v0

    if-nez v0, :cond_0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :cond_1
    return-void
.end method

.method private dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p3, v3, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :goto_0
    return-object v2

    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v0, v4

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :goto_0
    return v2

    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v0, v4

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :goto_0
    return v0

    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez p2, :cond_0

    if-ne v4, v8, :cond_2

    :cond_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    if-nez p3, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    return v0

    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    and-int v1, v5, p4

    if-nez v1, :cond_3

    return v7

    :cond_3
    if-ne v1, v5, :cond_7

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    if-nez p3, :cond_5

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_5
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    :goto_2
    if-nez p3, :cond_8

    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    return v0

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    goto :goto_2

    :cond_8
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_3
.end method

.method private static drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 6

    add-int v4, p2, p4

    invoke-static {p5}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v4, p2, v0

    add-int v5, p3, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 3

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p2

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p3

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p4

    const/4 v2, 0x2

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p3

    const/4 v2, 0x3

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p4

    const/4 v2, 0x4

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p3

    const/4 v2, 0x5

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p4

    const/4 v2, 0x6

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p5

    const/4 v2, 0x7

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p4

    const/16 v2, 0x8

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p5

    const/16 v2, 0x9

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p2

    const/16 v2, 0xa

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p5

    const/16 v2, 0xb

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p2

    const/16 v2, 0xc

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p5

    const/16 v2, 0xd

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p2

    const/16 v2, 0xe

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    int-to-float v1, p3

    const/16 v2, 0xf

    aput v1, v0, v2

    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private static drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .locals 7

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p6

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    neg-int v5, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p4

    move v4, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    neg-int v4, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p3

    move v3, p2

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    neg-int v4, p6

    neg-int v5, p6

    move-object v0, p0

    move-object v1, p5

    move v2, p3

    move v3, p4

    move v6, p7

    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    const/4 v5, 0x0

    iget-boolean v2, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return-void
.end method

.method private exitTooltipHoverTargets()V
    .locals 9

    const/4 v5, 0x0

    iget-boolean v2, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return-void
.end method

.method private static fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 12

    sub-int v2, p1, p5

    sub-int v3, p2, p6

    add-int v4, p3, p7

    add-int v11, p4, p8

    move-object v0, p0

    move-object/from16 v1, p9

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, v2

    move v8, p2

    move v9, p1

    move/from16 v10, p4

    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, p3

    move v8, p2

    move v9, v4

    move/from16 v10, p4

    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v5, p0

    move-object/from16 v6, p9

    move v7, v2

    move/from16 v8, p4

    move v9, v4

    move v10, v11

    invoke-static/range {v5 .. v10}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    return-void
.end method

.method private static fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 7

    if-eq p2, p4, :cond_2

    if-eq p3, p5, :cond_2

    if-le p2, p4, :cond_0

    move v6, p2

    move p2, p4

    move p4, v6

    :cond_0
    if-le p3, p5, :cond_1

    move v6, p3

    move p3, p5

    move p5, v6

    :cond_1
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private findChildWithAccessibilityFocus()Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_3

    if-ne v1, p0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method private getAndVerifyPreorderedIndex(IIZ)I
    .locals 5

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v1

    if-lt v1, p1, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getChildDrawingOrder() returned invalid index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (child count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method private static getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid preorderedList contained null child at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    aget-object v0, p1, p2

    :cond_1
    return-object v0
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int v5, v4, p1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    :sswitch_0
    if-ltz p2, :cond_1

    move v1, p2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    if-ne p2, v8, :cond_2

    move v1, v2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    if-ne p2, v7, :cond_0

    move v1, v2

    const/high16 v0, -0x80000000

    goto :goto_0

    :sswitch_1
    if-ltz p2, :cond_3

    move v1, p2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_3
    if-ne p2, v8, :cond_4

    move v1, v2

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_4
    if-ne p2, v7, :cond_0

    move v1, v2

    const/high16 v0, -0x80000000

    goto :goto_0

    :sswitch_2
    if-ltz p2, :cond_5

    move v1, p2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_5
    if-ne p2, v8, :cond_7

    sget-boolean v5, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    if-ne p2, v7, :cond_0

    sget-boolean v5, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v5, :cond_8

    const/4 v1, 0x0

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFill;
    .locals 1

    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFill;->obtain()Landroid/view/ViewGroup$ChildListForAutoFill;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method private getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private getTempPoint()[F
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 5

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v4, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v4, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v1, v3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v2
.end method

.method private hasBooleanFlag(I)Z
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasChildWithZ()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-lez v5, :cond_0

    iget-object v6, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    :pswitch_7
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    goto :goto_1

    :pswitch_b
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    goto :goto_1

    :pswitch_c
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    const/16 v1, 0x80

    invoke-virtual {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setFlags(II)V

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_1
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return-void
.end method

.method private notifyAnimationListener()V
    .locals 2

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private offsetRectBetweenParentAndChildDebug(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "ViewGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "void offsetRectBetweenParentAndChild() this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ViewGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    : descendant="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " rect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ViewGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    : offsetFromChildToParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " clipToBounds="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p0, :cond_0

    const-string/jumbo v4, "ViewGroup"

    const-string/jumbo v5, "    : if (descendant == this) return;"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const-string/jumbo v4, "ViewGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    : ViewParent theParent = descendant.mParent; theParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string/jumbo v4, "ViewGroup"

    const-string/jumbo v7, "    : ========================================"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    : while #"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " (theParent != null)= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " && (theParent instanceof View)= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v8, v3, Landroid/view/View;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " && (theParent != this)= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eq v3, p0, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ViewGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    :    >>  descendant = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ViewGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    :    >>  theParent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_8

    if-eq v3, p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    if-eqz p3, :cond_4

    iget v4, p1, Landroid/view/View;->mLeft:I

    iget v7, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v4, v7

    iget v7, p1, Landroid/view/View;->mTop:I

    iget v8, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v7, v8

    invoke-virtual {p2, v4, v7}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p4, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    iget v4, v2, Landroid/view/View;->mRight:I

    iget v7, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v7

    iget v7, v2, Landroid/view/View;->mBottom:I

    iget v8, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p2, v6, v6, v4, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    :goto_3
    move-object p1, v3

    check-cast p1, Landroid/view/View;

    iget-object v3, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const-string/jumbo v7, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    : while #"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " (theParent != null)= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_6

    move v4, v5

    :goto_4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " && (theParent instanceof View)= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v8, v3, Landroid/view/View;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " && (theParent != this)= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eq v3, p0, :cond_7

    move v4, v5

    :goto_5
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ViewGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    :    >>  descendant = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ViewGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    :    >>  theParent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    move v4, v6

    goto/16 :goto_0

    :cond_3
    move v4, v6

    goto/16 :goto_1

    :cond_4
    if-eqz p4, :cond_5

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    iget v4, v2, Landroid/view/View;->mRight:I

    iget v7, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v7

    iget v7, v2, Landroid/view/View;->mBottom:I

    iget v8, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p2, v6, v6, v4, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_5
    iget v4, p1, Landroid/view/View;->mScrollX:I

    iget v7, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v7

    iget v7, p1, Landroid/view/View;->mScrollY:I

    iget v8, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p2, v4, v7}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_3

    :cond_6
    move v4, v6

    goto/16 :goto_4

    :cond_7
    move v4, v6

    goto :goto_5

    :cond_8
    const-string/jumbo v4, "ViewGroup"

    const-string/jumbo v5, "    : ========================================"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, p0, :cond_a

    if-eqz p3, :cond_9

    iget v4, p1, Landroid/view/View;->mLeft:I

    iget v5, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/view/View;->mTop:I

    iget v6, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :goto_6
    return-void

    :cond_9
    iget v4, p1, Landroid/view/View;->mScrollX:I

    iget v5, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/view/View;->mScrollY:I

    iget v6, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_a
    const-string/jumbo v4, "ViewGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    : #Last  descendant="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ViewGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    : #Last  theParent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ViewGroup"

    const-string/jumbo v5, "    : IllegalArgumentException(parameter must be a descendant of this view)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private populateChildrenForAutofill(Ljava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    invoke-direct {p0, v2, v4, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v1

    if-nez v5, :cond_4

    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v6, v1

    :goto_2
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_2

    :cond_5
    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method private recreateChildDisplayList(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private removeFromArray(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    if-nez v2, :cond_1

    aget-object v2, v0, p1

    if-eqz v2, :cond_1

    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_5

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ltz p1, :cond_4

    if-ge p1, v1, :cond_4

    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2

    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1
.end method

.method private removeFromArray(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    if-ne v2, v1, :cond_1

    move v3, p1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_2
    if-ge v3, v1, :cond_3

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return-void
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    move-object v2, v0

    goto :goto_0

    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    :cond_1
    move-object v1, v2

    move-object v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v4, :cond_1

    invoke-virtual {p2, v5}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_1
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p2, v4, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_3
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    iget-object v4, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p2, v4, :cond_6

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_7
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_8
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v4, :cond_b

    const/4 v3, 0x0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_c

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_9

    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    iget-object v4, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0

    :cond_b
    iget-object v4, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_c
    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private removeViewInternal(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    return v1
.end method

.method private removeViewsInternal(II)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    add-int v4, p1, p2

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    :cond_1
    iget v8, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gt v4, v8, :cond_0

    iget-object v5, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget-object v8, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_9

    const/4 v3, 0x1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move v6, p1

    :goto_1
    if-ge v6, v4, :cond_b

    aget-object v7, v0, v6

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v7}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_2
    if-ne v7, v5, :cond_3

    invoke-virtual {v7, v9}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    const/4 v1, 0x1

    :cond_3
    iget-object v8, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne v7, v8, :cond_4

    move-object v2, v7

    :cond_4
    iget-object v8, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v7, v8, :cond_5

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_6

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_a

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_6
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    :cond_7
    :goto_2
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0, v7, v10}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_8
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    goto :goto_0

    :cond_a
    if-eqz v3, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    :cond_b
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    if-eqz v2, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method private resetTouchState()V
    .locals 2

    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return-void
.end method

.method private restoreFocusInClusterInternal(I)Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v0

    return v0
.end method

.method private setBooleanFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method private setLayoutMode(IZ)V
    .locals 1

    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/high16 v0, 0x800000

    invoke-direct {p0, v0, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method private setTouchscreenBlocksFocusNoRefocus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method private static sign(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    invoke-static {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v4

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v9

    if-nez v9, :cond_1

    xor-int/lit8 v6, v0, 0x1

    :goto_0
    const/high16 v9, 0x60000

    if-ne v5, v9, :cond_2

    if-eqz v6, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    or-int/lit8 p3, p3, 0x1

    :cond_3
    const/high16 v9, 0x20000

    if-ne v5, v9, :cond_4

    if-eqz v6, :cond_4

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4
    const/4 v3, 0x0

    iget v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v2, v9, [Landroid/view/View;

    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v8, v9, :cond_6

    iget-object v9, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v9, v8

    iget v9, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v9, v9, 0xc

    if-nez v9, :cond_5

    add-int/lit8 v4, v3, 0x1

    aput-object v1, v2, v3

    move v3, v4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v9

    invoke-static {v2, v10, v3, p0, v9}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_7

    aget-object v9, v2, v8

    invoke-virtual {v9, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    const/high16 v9, 0x40000

    if-ne v5, v9, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v7, v9, :cond_8

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_8
    return-void
.end method

.method public addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    if-eq v4, v7, :cond_1

    return-void

    :catchall_0
    move-exception v7

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    throw v7

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v7

    const/high16 v8, 0x60000

    if-ne v7, v8, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    new-array v6, v7, [Landroid/view/View;

    const/4 v5, 0x0

    :goto_1
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v5, v7, :cond_4

    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v7, v5

    iget v7, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_3

    add-int/lit8 v3, v2, 0x1

    aput-object v1, v6, v2

    move v2, v3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v7

    invoke-static {v6, v9, v2, p0, v7}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_5

    aget-object v7, v6, v5

    invoke-virtual {v7, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addTransientView(Landroid/view/View;I)V
    .locals 4

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p2, v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot add a null child view to a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1

    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    const/high16 v3, -0x80000000

    const/4 v0, 0x0

    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-gez p2, :cond_0

    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    const v2, -0x8001

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    iget v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method buildOrderedChildList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v7, 0x1

    if-le v1, v7, :cond_0

    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    :cond_0
    return-object v8

    :cond_1
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    invoke-direct {p0, v1, v4, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v0

    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v6, v7, v0

    invoke-virtual {v6}, Landroid/view/View;->getZ()F

    move-result v2

    move v5, v4

    :goto_2
    if-lez v5, :cond_3

    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    cmpl-float v7, v7, v2

    if-lez v7, :cond_3

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    return-object v7
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected canAnimate()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public captureTransitioningViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v2

    if-eqz p2, :cond_1

    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " does not fully implement ViewParent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method clearDefaultFocus(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-object v3, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v2, v0

    invoke-virtual {v1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    return-void

    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 5

    iget-object v1, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iput-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method clearFocusedInCluster(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eq v2, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    :goto_0
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v7, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget v7, v3, Landroid/graphics/Insets;->left:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v7, v3, Landroid/graphics/Insets;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, v3, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4, v6, v5, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    return-object v7

    :cond_2
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v7
.end method

.method public createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    new-array v4, v2, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    aget v5, v4, v3

    if-nez v5, :cond_0

    iget v5, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    or-int/lit8 v5, v5, 0x4

    iput v5, v1, Landroid/view/View;->mViewFlags:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p3, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v5, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, -0xd

    aget v6, v4, v3

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    iput v5, v1, Landroid/view/View;->mViewFlags:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected debug(I)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->debug(I)V

    :cond_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mDefaultFocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->debug(I)V

    :cond_1
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFocusedInCluster"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->debug(I)V

    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_5

    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyHardwareResources()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected detachViewFromParent(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    return-void
.end method

.method public dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 8

    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v7, 0x400000

    or-int/2addr v6, v7

    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v7, -0x400001

    and-int/2addr v6, v7

    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v6

    invoke-virtual {v0, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v6, :cond_1

    const/4 v4, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {p0, p2, v6}, Landroid/view/ViewGroup;->combineVisibility(II)I

    move-result v6

    invoke-virtual {v5, p1, v6}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_2
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5

    and-int/lit8 v4, p2, 0xc

    if-nez v4, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, v1, v3

    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    invoke-direct {p0}, Landroid/view/ViewGroup;->exitTooltipHoverTargets()V

    iput-boolean v5, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    iput-object v6, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    iput-boolean v5, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {v5}, Landroid/view/DragEvent;->recycle()V

    iput-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/view/View;->dispatchDetachedFromWindow()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v5, :cond_2

    const/4 v3, 0x0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_3
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    iput-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 19

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mX:F

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    :cond_0
    :goto_0
    return v12

    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_3

    aget-object v4, v6, v10

    iget v0, v4, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v4, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_1

    aget-object v17, v6, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v12, 0x1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    const/4 v12, 0x1

    :cond_4
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/4 v12, 0x1

    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v13, v0, :cond_d

    sget-boolean v17, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v17, :cond_c

    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/DragEvent;->mAction:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    :cond_a
    if-eqz v13, :cond_b

    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    :cond_b
    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/DragEvent;->mAction:I

    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    :cond_c
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    :cond_d
    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v13, p0

    :cond_e
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    if-eq v13, v0, :cond_10

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    sget-boolean v17, Landroid/view/ViewGroup;->sCascadedDragDrop:Z

    if-eqz v17, :cond_f

    move v9, v12

    :goto_4
    if-nez v9, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    iget-boolean v9, v0, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    goto :goto_4

    :cond_10
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mRenderNode:Landroid/view/RenderNode;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->isRecordingFor(Ljava/lang/Object;)Z

    move-result v28

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    and-int/lit8 v29, v20, 0x8

    if-eqz v29, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v29

    if-eqz v29, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v29

    xor-int/lit8 v6, v29, 0x1

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v0, v10, :cond_1

    aget-object v7, v9, v21

    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-nez v29, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v7, v1, v2, v10}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v29

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_2
    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->start()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x9

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x11

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v29, v0

    invoke-virtual {v13}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_3
    const/4 v11, 0x0

    and-int/lit8 v29, v20, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    const/4 v12, 0x1

    :goto_1
    if-eqz v12, :cond_4

    const/16 v29, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mRight:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mLeft:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mBottom:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x41

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x5

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v18

    if-eqz v28, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    if-nez v29, :cond_a

    const/16 v26, 0x0

    :goto_2
    if-eqz v26, :cond_b

    const/16 v27, 0x0

    :goto_3
    if-eqz v28, :cond_c

    const/16 v24, 0x0

    :goto_4
    if-nez v24, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v14

    :goto_5
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    if-ge v0, v10, :cond_11

    :cond_6
    :goto_7
    if-ltz v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    if-eqz v25, :cond_8

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_7

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_8

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    :cond_8
    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    const/16 v27, -0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v26

    goto :goto_2

    :cond_b
    const/16 v27, -0x1

    goto :goto_3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v24

    goto :goto_4

    :cond_d
    const/4 v14, 0x0

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v10, v1, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v8

    move-object/from16 v0, v24

    invoke-static {v0, v9, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_10

    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_f

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_10

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    :cond_10
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    :cond_11
    if-ltz v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    if-eqz v25, :cond_13

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0xc

    if-eqz v29, :cond_12

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v29

    if-eqz v29, :cond_13

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    :cond_13
    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_11

    :cond_14
    if-eqz v24, :cond_15

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-eqz v29, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v16, v29, -0x1

    move/from16 v21, v16

    :goto_8
    if-ltz v21, :cond_16

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v29

    or-int v22, v22, v29

    add-int/lit8 v21, v21, -0x1

    goto :goto_8

    :cond_16
    if-eqz v28, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v29

    if-eqz v29, :cond_18

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    :cond_18
    if-eqz v12, :cond_19

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    and-int/lit8 v29, v20, 0x4

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    :cond_1a
    and-int/lit8 v29, v20, 0x10

    if-nez v29, :cond_1b

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x200

    move/from16 v29, v0

    if-nez v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v29

    if-eqz v29, :cond_1b

    xor-int/lit8 v29, v22, 0x1

    if-eqz v29, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x200

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    new-instance v17, Landroid/view/ViewGroup$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v0, v1, v4

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    xor-int/lit8 v5, v7, 0x1

    :goto_1
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    const/4 v3, 0x1

    :goto_2
    if-nez v5, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v6

    aput p1, v6, v9

    aput p2, v6, v10

    invoke-virtual {p0, v6, v0}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    aget v7, v6, v9

    aget v8, v6, v10

    invoke-virtual {v0, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x0

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v5, v3, -0x1

    :goto_1
    if-ltz v5, :cond_4

    invoke-direct {p0, v3, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v1

    invoke-static {v6, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0, v7, v8, v0, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v9, 0x1

    return v9

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v0, v1, v5

    if-eqz v0, :cond_1

    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    :cond_3
    iget-object v7, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v3, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v10, p1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-nez v16, :cond_6

    const/16 v26, 0xa

    move/from16 v0, v26

    if-eq v4, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v22

    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewRootImpl;->isReversedFrame()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    :goto_0
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v21

    if-nez v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v9

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/16 v17, 0x0

    add-int/lit8 v15, v8, -0x1

    :goto_2
    if-ltz v15, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v6

    move-object/from16 v0, v21

    invoke-static {v0, v7, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_3

    :cond_0
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    move-object v14, v11

    const/16 v20, 0x0

    :goto_3
    if-nez v14, :cond_7

    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v14

    const/16 v23, 0x0

    :goto_4
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    iput-object v14, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    :goto_5
    move-object/from16 v17, v14

    const/16 v26, 0x9

    move/from16 v0, v26

    if-ne v4, v0, :cond_b

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v26

    or-int v12, v12, v26

    :cond_4
    :goto_6
    if-eqz v12, :cond_0

    :cond_5
    if-eqz v21, :cond_6

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    :cond_6
    :goto_7
    if-eqz v11, :cond_f

    iget-object v5, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v4, v0, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v26

    or-int v12, v12, v26

    :goto_8
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    move-object/from16 v11, v19

    goto :goto_7

    :cond_7
    iget-object v0, v14, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    if-ne v0, v5, :cond_9

    if-eqz v20, :cond_8

    iget-object v0, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    :goto_9
    const/16 v26, 0x0

    move-object/from16 v0, v26

    iput-object v0, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    const/16 v23, 0x1

    goto :goto_4

    :cond_8
    iget-object v11, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_9

    :cond_9
    move-object/from16 v20, v14

    iget-object v14, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_5

    :cond_b
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v4, v0, :cond_4

    if-nez v23, :cond_c

    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    const/16 v26, 0x9

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v26

    or-int v12, v12, v26

    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v26

    or-int v12, v12, v26

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v26

    or-int v12, v12, v26

    goto :goto_6

    :cond_d
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v4, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v13

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    :cond_e
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_8

    :cond_f
    if-nez v12, :cond_12

    const/16 v26, 0xa

    move/from16 v0, v26

    if-eq v4, v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    move-result v26

    xor-int/lit8 v18, v26, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v26, v0

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    if-eqz v18, :cond_10

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v12, v12, v26

    :cond_10
    :goto_b
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_11

    iget-boolean v0, v10, Landroid/view/MotionEvent;->mRecycled:Z

    move/from16 v26, v0

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_11

    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    :cond_11
    return v12

    :cond_12
    const/16 v18, 0x0

    goto :goto_a

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v4, v0, :cond_15

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v12, v12, v26

    :goto_c
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    :cond_14
    if-eqz v18, :cond_10

    const/16 v26, 0x9

    move/from16 v0, v26

    if-ne v4, v0, :cond_17

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v12, v12, v26

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_b

    :cond_15
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v4, v0, :cond_16

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    :cond_16
    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_c

    :cond_17
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v4, v0, :cond_10

    invoke-static {v10}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    const/16 v26, 0x9

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v12, v12, v26

    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    or-int v12, v12, v26

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    sget-boolean v4, Landroid/view/ViewGroup;->sIsSpenUspLevel3:Z

    if-nez v4, :cond_0

    return v5

    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 4

    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v5, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    return v6

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v5
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFill;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAutoFill;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setChildCount(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$ChildListForAutoFill;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAutoFill;->recycle()V

    return-void
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAssistBlocked()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getChildCount()I

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v3, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setChildCount(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v12

    if-nez v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_9

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v12, v14, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v6

    move v2, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v15, 0x17

    if-ge v14, v15, :cond_8

    const-string/jumbo v14, "ViewGroup"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Bad getChildDrawingOrder while collecting assist @ "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    if-lez v7, :cond_3

    new-array v11, v3, [I

    new-instance v13, Landroid/util/SparseBooleanArray;

    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v14

    aput v14, v11, v9

    aget v14, v11, v9

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    move v9, v7

    :goto_3
    if-ge v9, v3, :cond_7

    :goto_4
    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v14

    if-eqz v14, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    aput v10, v11, v9

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v3, :cond_3

    aget v8, v11, v9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v14, v8

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    throw v6

    :cond_9
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :cond_a
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/high16 v5, 0x20000000

    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/high16 v5, 0x20000000

    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v0, v1, v3

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v11, 0x0

    return v11

    :pswitch_1
    const/4 v7, 0x0

    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    :goto_1
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v6, v4, -0x1

    :goto_2
    if-ltz v6, :cond_4

    invoke-direct {p0, v4, v6, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v2

    invoke-static {v8, v3, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v1, v11}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v7, v1

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object v11, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eq v11, v7, :cond_7

    iget-object v11, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v11, :cond_6

    const/16 v11, 0xa

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v11, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v11, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_6
    iput-object v7, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    :cond_7
    iget-object v11, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v11, :cond_9

    iget-boolean v11, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    const/16 v11, 0xa

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_8
    const/4 v11, 0x1

    return v11

    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    iput-boolean v11, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    iget-boolean v11, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    return v11

    :pswitch_2
    iget-object v11, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v11, :cond_a

    iget-object v11, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v11, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 v11, 0x0

    iput-object v11, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    goto/16 :goto_0

    :cond_a
    iget-boolean v11, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v11, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 43

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isAccessibilityFocusedViewOrHost()Z

    move-result v39

    if-eqz v39, :cond_1

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v39

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    move/from16 v39, v0

    if-eqz v39, :cond_15

    const/16 v39, 0x1

    return v39

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mSemX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mSemY:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v39

    if-eqz v39, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->semIsShowingScrollbar()Z

    move-result v39

    if-eqz v39, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRect:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemX:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v41

    add-int v40, v40, v41

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemY:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v42

    add-int v41, v41, v42

    invoke-virtual/range {v39 .. v41}, Landroid/graphics/Rect;->contains(II)Z

    move-result v39

    if-eqz v39, :cond_2

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemY:F

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRect:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mSemVerticalScrollbarRectRelativePosY:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHorizontalScrollBarEnabled()Z

    move-result v39

    if-eqz v39, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->semIsShowingScrollbar()Z

    move-result v39

    if-eqz v39, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRect:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemX:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v41

    add-int v40, v40, v41

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemY:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v42

    add-int v41, v41, v42

    invoke-virtual/range {v39 .. v41}, Landroid/graphics/Rect;->contains(II)Z

    move-result v39

    if-eqz v39, :cond_3

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemX:F

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRect:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRectRelativePosX:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    move/from16 v39, v0

    if-eqz v39, :cond_15

    const/16 v39, 0x1

    return v39

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    move/from16 v39, v0

    if-eqz v39, :cond_15

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v39

    if-nez v39, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_4
    const/16 v39, 0x1

    return v39

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mSemScrollingByScrollbar:Z

    move/from16 v39, v0

    if-eqz v39, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    move/from16 v39, v0

    if-eqz v39, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeVerticalScrollOffset()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeVerticalScrollExtent()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeVerticalScrollRange()I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemY:F

    move/from16 v39, v0

    sub-float v4, v31, v39

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isSemUsingAdapterView()Z

    move-result v39

    if-eqz v39, :cond_b

    if-nez v5, :cond_7

    const/4 v6, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->semGetItemCount()I

    move-result v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    move/from16 v39, v0

    if-eqz v39, :cond_9

    const/16 v39, 0x1

    move/from16 v0, v27

    move/from16 v1, v39

    if-le v0, v1, :cond_8

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemVerticalScrollbarRectRelativePosY:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v40, v31, v40

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetSelection(I)V

    :cond_5
    :goto_2
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mSemX:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mSemY:F

    const/16 v39, 0x1

    return v39

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeHorizontalScrollOffset()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeHorizontalScrollExtent()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->computeHorizontalScrollRange()I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemX:F

    move/from16 v39, v0

    sub-float v4, v30, v39

    goto :goto_0

    :cond_7
    div-int v39, v8, v5

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v4

    move/from16 v0, v39

    float-to-int v6, v0

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->semSmoothScrollBy(I)V

    goto :goto_2

    :cond_9
    const/16 v39, 0x1

    move/from16 v0, v27

    move/from16 v1, v39

    if-le v0, v1, :cond_a

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mSemHorizontalScrollbarRectRelativePosX:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v40, v30, v40

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetSelection(I)V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->semSmoothScrollBy(I)V

    goto :goto_2

    :cond_b
    if-nez v5, :cond_c

    const/4 v6, 0x0

    :goto_3
    if-gez v6, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    move/from16 v39, v0

    if-eqz v39, :cond_f

    add-int v39, v6, v7

    if-ltz v39, :cond_e

    move/from16 v39, v6

    :goto_4
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    move/from16 v39, v0

    if-eqz v39, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v39

    :goto_5
    add-int v39, v39, v8

    div-int v39, v39, v5

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v4

    move/from16 v0, v39

    float-to-int v6, v0

    goto :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v39

    goto :goto_5

    :cond_e
    neg-int v0, v7

    move/from16 v39, v0

    goto :goto_4

    :cond_f
    add-int v39, v6, v7

    if-ltz v39, :cond_10

    move/from16 v39, v6

    :goto_6
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto/16 :goto_2

    :cond_10
    neg-int v0, v7

    move/from16 v39, v0

    goto :goto_6

    :cond_11
    if-lez v6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mSemScrollingVertical:Z

    move/from16 v39, v0

    if-eqz v39, :cond_13

    add-int v39, v6, v7

    add-int v39, v39, v5

    move/from16 v0, v39

    if-gt v0, v8, :cond_12

    move/from16 v39, v6

    :goto_7
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto/16 :goto_2

    :cond_12
    sub-int v39, v8, v5

    sub-int v39, v39, v7

    goto :goto_7

    :cond_13
    add-int v39, v6, v7

    add-int v39, v39, v5

    move/from16 v0, v39

    if-gt v0, v8, :cond_14

    move/from16 v39, v6

    :goto_8
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto/16 :goto_2

    :cond_14
    sub-int v39, v8, v5

    sub-int v39, v39, v7

    goto :goto_8

    :cond_15
    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v39

    if-eqz v39, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v11, v9, 0xff

    if-eqz v11, :cond_16

    const/16 v39, 0xd3

    move/from16 v0, v39

    if-ne v11, v0, :cond_17

    :cond_16
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    :cond_17
    if-eqz v11, :cond_18

    const/16 v39, 0xd3

    move/from16 v0, v39

    if-ne v11, v0, :cond_1c

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v39, v0

    const/high16 v40, 0x80000

    and-int v39, v39, v40

    if-eqz v39, :cond_1d

    const/16 v21, 0x1

    :goto_9
    if-nez v21, :cond_1e

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_a
    if-nez v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1a

    :cond_19
    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    :cond_1a
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v39

    if-nez v39, :cond_1f

    const/16 v39, 0x3

    move/from16 v0, v39

    if-ne v11, v0, :cond_20

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v39, v0

    const/high16 v40, 0x200000

    and-int v39, v39, v40

    if-eqz v39, :cond_21

    const/16 v35, 0x1

    :goto_c
    const/16 v29, 0x0

    const/4 v12, 0x0

    if-nez v14, :cond_25

    xor-int/lit8 v39, v26, 0x1

    if-eqz v39, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v39

    if-eqz v39, :cond_22

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    move-result-object v17

    :goto_d
    if-eqz v11, :cond_1b

    const/16 v39, 0xd3

    move/from16 v0, v39

    if-ne v11, v0, :cond_23

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    if-eqz v35, :cond_2a

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v39

    const/16 v40, 0x1

    shl-int v24, v40, v39

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move/from16 v19, v0

    if-eqz v19, :cond_31

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v37

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v34

    if-nez v34, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v20

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object/from16 v18, v0

    add-int/lit8 v23, v19, -0x1

    :goto_10
    if-ltz v23, :cond_30

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v16

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v17, :cond_2d

    move-object/from16 v0, v17

    if-eq v0, v15, :cond_2c

    :goto_11
    add-int/lit8 v23, v23, -0x1

    goto :goto_10

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v39, v0

    if-nez v39, :cond_18

    const/16 v26, 0x1

    goto/16 :goto_a

    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_9

    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_a

    :cond_1f
    const/4 v14, 0x1

    goto/16 :goto_b

    :cond_20
    const/4 v14, 0x0

    goto/16 :goto_b

    :cond_21
    const/16 v35, 0x0

    goto/16 :goto_c

    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_d

    :cond_23
    if-eqz v35, :cond_24

    const/16 v39, 0x5

    move/from16 v0, v39

    if-eq v11, v0, :cond_1b

    :cond_24
    const/16 v39, 0x7

    move/from16 v0, v39

    if-eq v11, v0, :cond_1b

    :cond_25
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v39, v0

    if-nez v39, :cond_38

    const/16 v39, 0x0

    const/16 v40, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v14, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v22

    :cond_26
    if-nez v14, :cond_27

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v11, v0, :cond_3f

    :cond_27
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    :cond_28
    :goto_13
    if-nez v22, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    if-eqz v39, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_29
    return v22

    :cond_2a
    const/16 v24, -0x1

    goto/16 :goto_e

    :cond_2b
    const/16 v20, 0x0

    goto/16 :goto_f

    :cond_2c
    const/16 v17, 0x0

    add-int/lit8 v23, v19, -0x1

    :cond_2d
    invoke-static {v15}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v39

    if-eqz v39, :cond_2e

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v39

    xor-int/lit8 v39, v39, 0x1

    if-eqz v39, :cond_2f

    :cond_2e
    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    goto/16 :goto_11

    :cond_2f
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v29

    if-eqz v29, :cond_32

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v39, v0

    or-int v39, v39, v24

    move/from16 v0, v39

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    :cond_30
    :goto_14
    if-eqz v34, :cond_31

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    :cond_31
    if-nez v29, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v39, v0

    if-eqz v39, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v29, v0

    :goto_15
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v39, v0

    if-eqz v39, :cond_37

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v29, v0

    goto :goto_15

    :cond_32
    invoke-static {v15}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v15, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v39

    if-eqz v39, :cond_36

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    if-eqz v34, :cond_35

    const/16 v28, 0x0

    :goto_16
    move/from16 v0, v28

    move/from16 v1, v19

    if-ge v0, v1, :cond_33

    aget-object v39, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object/from16 v40, v0

    aget-object v40, v40, v28

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_34

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    :cond_33
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v15, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v29

    const/4 v12, 0x1

    goto :goto_14

    :cond_34
    add-int/lit8 v28, v28, 0x1

    goto :goto_16

    :cond_35
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_17

    :cond_36
    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    goto/16 :goto_11

    :cond_37
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v39, v0

    or-int v39, v39, v24

    move/from16 v0, v39

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    goto/16 :goto_12

    :cond_38
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v36, v0

    :goto_18
    if-eqz v36, :cond_26

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v32, v0

    if-eqz v12, :cond_3a

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_3a

    const/16 v22, 0x1

    :cond_39
    :goto_19
    move-object/from16 v33, v36

    move-object/from16 v36, v32

    goto :goto_18

    :cond_3a
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v39, v0

    if-eqz v39, :cond_3e

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v39

    if-nez v39, :cond_3c

    move/from16 v13, v26

    :goto_1a
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v39, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v13, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v39

    if-eqz v39, :cond_3b

    const/16 v22, 0x1

    :cond_3b
    if-eqz v13, :cond_39

    if-nez v33, :cond_3d

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_1b
    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    move-object/from16 v36, v32

    goto :goto_18

    :cond_3c
    const/4 v13, 0x1

    goto :goto_1a

    :cond_3d
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1b

    :cond_3e
    const-string/jumbo v39, "ViewGroup"

    const-string/jumbo v40, "Skip dispatching event because target.child is null."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_3f
    const/16 v39, 0xd4

    move/from16 v0, v39

    if-eq v11, v0, :cond_27

    const/16 v39, 0x7

    move/from16 v0, v39

    if-eq v11, v0, :cond_27

    if-eqz v35, :cond_28

    const/16 v39, 0x6

    move/from16 v0, v39

    if-ne v11, v0, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v39

    const/16 v40, 0x1

    shl-int v25, v40, v39

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method dispatchViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method dispatchVisibilityAggregated(Z)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    move-result p1

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v0, v1, v3

    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v2, "focus:descendantFocusability"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v2, "drawing:clipChildren"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string/jumbo v2, "drawing:clipToPadding"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string/jumbo v2, "drawing:childrenDrawingOrderEnabled"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string/jumbo v2, "drawing:persistentDrawingCache"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const-string/jumbo v2, "meta:__childCount__"

    int-to-short v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "meta:__child__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    iput-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_2

    aget-object v0, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public findNamedViews(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/ViewGroup;->mGhostView:Landroid/view/GhostView;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v6

    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v0, v1, v4

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v6
.end method

.method public findViewByAutofillIdTraversal(I)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v0, v1, v4

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p0

    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, v3, v0

    if-eq v2, p2, :cond_1

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v5, 0x0

    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v4, :cond_0

    return-object p0

    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, v3, v0

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p0

    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, v3, v0

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3

    const/high16 v2, 0x10000

    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_3
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11

    const/4 v9, 0x1

    iget v10, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x200

    if-nez v10, :cond_0

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_1

    if-nez p1, :cond_1

    return v9

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v7, 0x1

    if-lez v3, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    :goto_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    invoke-direct {p0, v3, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v1

    invoke-static {v8, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iget v10, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_3

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v7, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_6
    if-nez v6, :cond_7

    :goto_3
    return v7

    :cond_7
    move v7, v9

    goto :goto_3
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getChildTransformation()Landroid/view/animation/Transformation;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/view/View;->mLeft:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v4, v11, v12

    move-object/from16 v0, p1

    iget v11, v0, Landroid/view/View;->mTop:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v5, v11, v12

    int-to-float v11, v4

    int-to-float v12, v5

    invoke-virtual {v8, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    if-eqz p3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v11, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    :goto_1
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    const/4 v12, 0x0

    aput v11, v7, v12

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v7, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v11, 0x0

    aget v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/Point;->x:I

    const/4 v11, 0x1

    aget v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/Point;->y:I

    :cond_1
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v11, v4

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v11, v5

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/Point;->y:I

    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mRight:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mLeft:I

    sub-int v10, v11, v12

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mBottom:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mTop:I

    sub-int v6, v11, v12

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v11, v11, Landroid/view/ViewGroup;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    int-to-float v13, v10

    int-to-float v14, v6

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v9

    :cond_4
    if-nez p4, :cond_5

    if-eqz v9, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v11, v11, 0x22

    const/16 v12, 0x22

    if-ne v11, v12, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int v13, v10, v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int v14, v6, v14

    int-to-float v14, v14

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v9

    :cond_6
    if-nez p4, :cond_7

    if-eqz v9, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewGroup;->mClipBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v9

    :cond_8
    iget v11, v8, Landroid/graphics/RectF;->left:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    iget v12, v8, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p4, :cond_9

    if-eqz v9, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v11, v11, Landroid/view/ViewGroup;

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v11, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v9

    :cond_a
    :goto_2
    return v9

    :cond_b
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    goto/16 :goto_0

    :cond_c
    const/4 v11, 0x2

    new-array v7, v11, [F

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v11, v0, v1, v2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    goto :goto_2
.end method

.method public getClipChildren()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getClipToPadding()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 3

    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v1

    :cond_1
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    goto :goto_0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method getNumChildrenForAccessibility()I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    return v2
.end method

.method public getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x22

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchscreenBlocksFocus()Z
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getTransientView(I)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getTransientViewCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTransientViewIndex(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    return-void
.end method

.method hasDefaultFocus()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->hasDefaultFocus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method hasFocusable(ZZ)Z
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusable()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v1

    return v1

    :cond_3
    return v3
.end method

.method hasFocusableChild(Z)Z
    .locals 5

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v0, v1, v3

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method protected hasHoveredChild()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransientState()Z
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method protected internalSetPadding(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_0

    iget-boolean v0, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    move-object/from16 v14, p0

    if-eqz v6, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_b

    const/4 v9, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_c

    xor-int/lit8 v19, v9, 0x1

    if-eqz v19, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v19

    if-nez v19, :cond_c

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    :goto_1
    if-eqz v10, :cond_d

    const/high16 v13, 0x400000

    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v19, v0

    const/high16 v20, -0x80000000

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v19, v0

    const v20, -0x8001

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    :cond_1
    iget-object v11, v6, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v19, v0

    const/16 v20, 0x0

    aput v19, v11, v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v19, v0

    const/16 v20, 0x1

    aput v19, v11, v20

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_4

    :cond_2
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget-object v15, v6, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v17

    if-eqz v17, :cond_e

    iget-object v0, v6, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    invoke-virtual {v15}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_3
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    const/16 v18, 0x0

    instance-of v0, v14, Landroid/view/View;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v18, v14

    check-cast v18, Landroid/view/View;

    :cond_5
    if-eqz v9, :cond_6

    if-eqz v18, :cond_10

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x40

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    :cond_6
    :goto_4
    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x3000

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getSolidColor()I

    move-result v19

    if-nez v19, :cond_7

    const/high16 v13, 0x200000

    :cond_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v19, v0

    const/high16 v20, 0x600000

    and-int v19, v19, v20

    const/high16 v20, 0x200000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v19, v0

    const v20, -0x600001

    and-int v19, v19, v20

    or-int v19, v19, v13

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    :cond_8
    move-object/from16 v0, p2

    invoke-interface {v14, v11, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v19

    if-nez v19, :cond_9

    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v12, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_9
    if-nez v14, :cond_4

    :cond_a
    return-void

    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_d
    const/high16 v13, 0x200000

    goto/16 :goto_2

    :cond_e
    move-object/from16 v16, v8

    goto/16 :goto_3

    :cond_f
    move-object/from16 v16, v8

    goto/16 :goto_3

    :cond_10
    instance-of v0, v14, Landroid/view/ViewRootImpl;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v19, v14

    check-cast v19, Landroid/view/ViewRootImpl;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto/16 :goto_4
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, 0x8020

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    aget v2, p1, v5

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_1

    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    aput v0, p1, v5

    aput v1, p1, v6

    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    :cond_2
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    return-object v2

    :cond_3
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_4

    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v2, p1, v5

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    aput v2, p1, v6

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method invalidateInheritedLayoutMode(I)V
    .locals 4

    const/4 v3, -0x1

    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/high16 v2, 0x800000

    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v1, 0x8000

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLayoutModeOptical()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    const/high16 v1, 0x200000

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSemUsingAdapterView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isShowingContextMenuWithCoords()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v1

    aput p1, v1, v4

    aput p2, v1, v5

    invoke-virtual {p0, v1, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    aget v2, v1, v4

    aget v3, v1, v5

    invoke-virtual {p3, v2, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    aget v2, v1, v4

    aget v3, v1, v5

    invoke-virtual {p4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return v0
.end method

.method public isTransitionGroup()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    return v1

    :cond_3
    if-eqz v0, :cond_4

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-ne v0, v3, :cond_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    goto :goto_0
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildren(II)V
    .locals 6

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyChildOfDragStart(Landroid/view/View;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v2, v4, Landroid/view/DragEvent;->mX:F

    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iget v3, v4, Landroid/view/DragEvent;->mY:F

    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    move-result-object v1

    aput v2, v1, v6

    aput v3, v1, v7

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v5, v1, v6

    iput v5, v4, Landroid/view/DragEvent;->mX:F

    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    aget v5, v1, v7

    iput v5, v4, Landroid/view/DragEvent;->mY:F

    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    invoke-virtual {p1, v4}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v2, v4, Landroid/view/DragEvent;->mX:F

    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput v3, v4, Landroid/view/DragEvent;->mY:F

    iget-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    iput-boolean v6, v4, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return v0
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifySubtreeAccessibilityStateChangedIfNeeded()V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isImportantForAccessibility()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void

    :cond_2
    invoke-super {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 7

    const/4 v6, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    iget v5, v4, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mTop:I

    iget v5, v4, Landroid/view/View;->mBottom:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mBottom:I

    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, v6, v6}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    iget-object v3, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :goto_0
    if-eqz v3, :cond_4

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_4

    if-eq v3, p0, :cond_4

    if-eqz p3, :cond_2

    iget v4, p1, Landroid/view/View;->mLeft:I

    iget v5, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/view/View;->mTop:I

    iget v6, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p4, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    iget v4, v2, Landroid/view/View;->mRight:I

    iget v5, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/view/View;->mBottom:I

    iget v6, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v7, v7, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    :goto_1
    move-object p1, v3

    check-cast p1, Landroid/view/View;

    iget-object v3, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    iget v4, v2, Landroid/view/View;->mRight:I

    iget v5, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/view/View;->mBottom:I

    iget v6, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v7, v7, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_3
    iget v4, p1, Landroid/view/View;->mScrollX:I

    iget v5, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/view/View;->mScrollY:I

    iget v6, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_4
    if-ne v3, p0, :cond_6

    if-eqz p3, :cond_5

    iget v4, p1, Landroid/view/View;->mLeft:I

    iget v5, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/view/View;->mTop:I

    iget v6, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :goto_2
    return-void

    :cond_5
    iget v4, p1, Landroid/view/View;->mScrollX:I

    iget v5, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/view/View;->mScrollY:I

    iget v6, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChildDebug(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "parameter must be a descendant of this view"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_0
    :goto_0
    if-nez p3, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v5, v0

    add-int/2addr v3, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v4
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/16 v6, 0xff

    const/16 v13, 0x8

    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_1

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v12

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v12, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, v12, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v0

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, v12, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v5, v12, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    const/4 v2, 0x0

    invoke-static {v0, v6, v2, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    sget v0, Landroid/view/ViewGroup;->DEBUG_CORNERS_COLOR:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v9

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_3

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v13, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v2, p1

    move-object v7, v1

    invoke-static/range {v2 .. v9}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const v2, -0x600001

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v1, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v0, v2

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v1, -0x7fe00000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move-object p2, p0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v5, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/16 v3, 0x2002

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->isOnScrollbar(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->semIsShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    return v2
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Landroid/view/ViewGroup;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/view/ViewGroup;->dispatchNestedPreScroll(II[I[I)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9

    const/4 v8, 0x0

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    const/4 v5, 0x1

    move v3, v2

    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move v4, v6

    :goto_1
    if-eq v4, v3, :cond_2

    aget-object v0, v1, v4

    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    return v7

    :cond_0
    add-int/lit8 v6, v2, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    :cond_2
    return v8
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/view/ViewGroup;->isOnScrollbarThumb(FF)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDraggingScrollBar()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/16 v11, 0x3e8

    invoke-static {v10, v11}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v10

    return-object v10

    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v5, v3, -0x1

    :goto_1
    if-ltz v5, :cond_6

    invoke-direct {p0, v3, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v1

    invoke-static {v7, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0, v8, v9, v0, v11}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-object v6

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v10

    return-object v10
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->stopNestedScroll()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iput v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget-object v7, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_6

    const/4 v3, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    add-int/lit8 v5, v2, -0x1

    :goto_1
    if-ltz v5, :cond_8

    aget-object v6, v0, v5

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_1
    if-ne v6, v4, :cond_2

    invoke-virtual {v6, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    :cond_4
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v6, v9}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    iput-object v8, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    aput-object v8, v0, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    :cond_8
    iget-object v7, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_9
    iget-object v7, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->rootViewRequestFocus()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_4
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    return-void

    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_8
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeTransientView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v3, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    return-void
.end method

.method public removeViews(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    :cond_1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    const/high16 v2, 0x80000

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    return v2

    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resetDragableChildren(Landroid/view/DragEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected resetResolvedDrawables()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resetResolvedDrawables()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resetResolvedPadding()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextAlignment()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected resolveDrawables()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resolveDrawables()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public resolveLayoutParams()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutParams()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 5

    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public resolveTextAlignment()Z
    .locals 5

    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resolveTextAlignment()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public resolveTextDirection()Z
    .locals 5

    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->resolveTextDirection()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public restoreDefaultFocus()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0
.end method

.method public restoreFocusInCluster(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    return v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    move-result v1

    return v1
.end method

.method public restoreFocusNotInCluster()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x82

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->restoreFocusInCluster(I)Z

    move-result v3

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_2

    :cond_1
    return v4

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x60000

    if-ne v1, v3, :cond_3

    invoke-super {p0, v5, v6}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    return v3

    :cond_3
    const/high16 v3, 0x20000

    if-ne v1, v3, :cond_4

    invoke-super {p0, v5, v6}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v7

    :cond_4
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v3

    if-eqz v3, :cond_5

    return v7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/high16 v3, 0x40000

    if-ne v1, v3, :cond_7

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    invoke-super {p0, v5, v6}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    return v3

    :cond_7
    return v4
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-void
.end method

.method protected semGetItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semOffsetChildrenLeftAndRight(I)V
    .locals 7

    const/4 v6, 0x0

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    iget v5, v4, Landroid/view/View;->mLeft:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mLeft:I

    iget v5, v4, Landroid/view/View;->mRight:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/View;->mRight:I

    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    iget-object v5, v4, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetLeftAndRight(I)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, v6, v6}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void
.end method

.method public semOffsetChildrenTopAndBottom(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    return-void
.end method

.method public semSetSelection(I)V
    .locals 0

    return-void
.end method

.method public semSmoothScrollBy(I)V
    .locals 0

    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    return-void

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5

    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setClipChildren(Z)V
    .locals 5

    const/4 v4, 0x1

    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eq p1, v2, :cond_3

    invoke-direct {p0, v4, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v3, p1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->invalidate(Z)V

    :cond_3
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method setDefaultFocus(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1

    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v2, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setTouchscreenBlocksFocus(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setTransitionGroup(Z)V
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method shouldBlockFocusForTouchscreen()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.touchscreen"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v2

    if-eq v2, p0, :cond_2

    :cond_0
    :goto_0
    xor-int/lit8 v1, v0, 0x1

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 3

    const v2, -0x20000001

    :try_start_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return v0

    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    const v2, -0x10000001

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-object v0

    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v0

    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6

    const/4 v5, 0x0

    const v4, -0x8000001

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    :try_start_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    sget-object v2, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v1, v2, :cond_0

    return-object v1

    :catchall_0
    move-exception v2

    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v5
.end method

.method public startLayoutAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1

    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public suppressLayout(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    :cond_0
    return-void
.end method

.method public transformPointToViewLocal([FLandroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v3, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    return-void
.end method

.method unFocus(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v1, v2, v4

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
