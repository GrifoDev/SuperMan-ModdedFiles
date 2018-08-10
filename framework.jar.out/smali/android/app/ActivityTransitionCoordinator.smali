.class abstract Landroid/app/ActivityTransitionCoordinator;
.super Landroid/os/ResultReceiver;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;,
        Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;,
        Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;,
        Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    }
.end annotation


# static fields
.field protected static final KEY_ELEVATION:Ljava/lang/String; = "shared_element:elevation"

.field protected static final KEY_IMAGE_MATRIX:Ljava/lang/String; = "shared_element:imageMatrix"

.field static final KEY_REMOTE_RECEIVER:Ljava/lang/String; = "android:remoteReceiver"

.field protected static final KEY_SCALE_TYPE:Ljava/lang/String; = "shared_element:scaleType"

.field protected static final KEY_SCREEN_BOTTOM:Ljava/lang/String; = "shared_element:screenBottom"

.field protected static final KEY_SCREEN_LEFT:Ljava/lang/String; = "shared_element:screenLeft"

.field protected static final KEY_SCREEN_RIGHT:Ljava/lang/String; = "shared_element:screenRight"

.field protected static final KEY_SCREEN_TOP:Ljava/lang/String; = "shared_element:screenTop"

.field protected static final KEY_SNAPSHOT:Ljava/lang/String; = "shared_element:bitmap"

.field protected static final KEY_TRANSLATION_Z:Ljava/lang/String; = "shared_element:translationZ"

.field protected static final KEY_WINDOW_POSITION_Y:Ljava/lang/String; = "shared_element:windowPositionY"

.field public static final MSG_CANCEL:I = 0x6a

.field public static final MSG_EXIT_TRANSITION_COMPLETE:I = 0x68

.field public static final MSG_FORCE_ENTER_TRANSITION:I = 0xc7

.field public static final MSG_HIDE_SHARED_ELEMENTS:I = 0x65

.field public static final MSG_SET_REMOTE_RECEIVER:I = 0x64

.field public static final MSG_SHARED_ELEMENT_DESTINATION:I = 0x6b

.field public static final MSG_START_EXIT_TRANSITION:I = 0x69

.field public static final MSG_TAKE_SHARED_ELEMENTS:I = 0x67

.field private static final SAFE_DEBUG:Z

.field protected static final SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

.field private static final TAG:Ljava/lang/String; = "ActivityTransitionCoordinator"


# instance fields
.field protected final mAllSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundAnimatorComplete:Z

.field private final mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

.field private mGhostViewListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIsReturning:Z

.field private mIsStartingTransition:Z

.field protected mListener:Landroid/app/SharedElementCallback;

.field private mOriginalAlphas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingTransition:Ljava/lang/Runnable;

.field protected mResultReceiver:Landroid/os/ResultReceiver;

.field protected final mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementParentMatrices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementTransitionComplete:Z

.field protected final mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mStrippedTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsTransitionComplete:Z

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ActivityTransitionCoordinator;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return p1
.end method

.method static synthetic -set1(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/SharedElementCallback;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    new-instance v0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>(Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;)V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    iput-boolean p4, p0, Landroid/app/ActivityTransitionCoordinator;->mIsReturning:Z

    return-void
.end method

.method private static findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    instance-of v6, p0, Landroid/transition/TransitionSet;

    if-eqz v6, :cond_2

    move-object v4, p0

    check-cast v4, Landroid/transition/TransitionSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v6

    invoke-static {v6, v2, p2}, Landroid/app/ActivityTransitionCoordinator;->findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .locals 6

    new-instance v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    invoke-direct {v3}, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    instance-of v4, p0, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    const-string/jumbo v4, "shared_element:scaleType"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_2

    return-object v3

    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iput-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    :cond_3
    return-object v3
.end method

.method private getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 6

    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    const/4 v0, -0x1

    :goto_0
    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, v3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method public static isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v1, p0, Landroid/view/ViewGroup;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v1

    return v1
.end method

.method private static isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method protected static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-object v0
.end method

.method private static noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V
    .locals 5

    instance-of v4, p0, Landroid/transition/Visibility;

    if-eqz v4, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/transition/Visibility;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/transition/Visibility;->setSuppressLayout(Z)V

    :cond_0
    return-void

    :cond_1
    instance-of v4, p0, Landroid/transition/TransitionSet;

    if-eqz v4, :cond_0

    move-object v2, p0

    check-cast v2, Landroid/transition/TransitionSet;

    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ActivityTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private releaseViewRootPauseInput()V
    .locals 5

    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ActivityTransitionCoordinator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseViewRootPauseInput : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ActivityTransitionCoordinator"

    const-string/jumbo v3, "setPausedForTransition false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    :cond_2
    return-void
.end method

.method protected static removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/app/ActivityTransitionCoordinator;->findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private setEpicenter(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {v1, v2}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected static setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;)V"
        }
    .end annotation

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v6, :cond_0

    move-object v2, v4

    check-cast v2, Landroid/widget/ImageView;

    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_0

    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setElevation(F)V

    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationZ(F)V

    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    iget v7, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    iget v8, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    iget v9, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSharedElementMatrices()V
    .locals 7

    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V
    .locals 34

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v21

    if-nez v21, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v31, v0

    if-eqz v31, :cond_1

    const-string/jumbo v31, "shared_element:scaleType"

    const/16 v32, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    if-ltz v20, :cond_1

    move-object/from16 v11, p1

    check-cast v11, Landroid/widget/ImageView;

    sget-object v31, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object v19, v31, v20

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v31, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_1

    const-string/jumbo v31, "shared_element:imageMatrix"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/graphics/Matrix;->setValues([F)V

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    const-string/jumbo v31, "shared_element:translationZ"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    const-string/jumbo v31, "shared_element:elevation"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->setElevation(F)V

    const-string/jumbo v31, "shared_element:screenLeft"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    const-string/jumbo v31, "shared_element:screenTop"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v23

    const-string/jumbo v31, "shared_element:screenRight"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v18

    const-string/jumbo v31, "shared_element:screenBottom"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    if-eqz p6, :cond_2

    const/16 v31, 0x0

    aget v31, p6, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v12, v12, v31

    const/16 v31, 0x1

    aget v31, p6, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v23, v23, v31

    const/16 v31, 0x0

    aget v31, p6, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v18, v18, v31

    const/16 v31, 0x1

    aget v31, p6, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v5, v5, v31

    :goto_0
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v31

    sub-int v26, v31, v28

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v31

    sub-int v9, v31, v29

    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v26

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v31

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    add-int v31, v28, v26

    add-int v32, v29, v9

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityTransitionCoordinator;->getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v31

    const/16 v32, 0x1

    aget v15, v31, v32

    const-string/jumbo v31, "shared_element:windowPositionY"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p4

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/16 v31, 0x9

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v22, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v31, 0x5

    aget v32, v22, v31

    sub-int v33, v15, v16

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    aput v32, v22, v31

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_3
    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p4 .. p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v25

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    sub-float v12, v13, v31

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    sub-float v23, v24, v31

    add-float v18, v12, v25

    add-float v5, v23, v8

    goto/16 :goto_0
.end method

.method private setSharedElements(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v4, p1}, Landroid/app/ActivityTransitionCoordinator;->isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private showView(Landroid/view/View;Z)V
    .locals 2

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    if-eqz p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_1
    return-void
.end method

.method private startInputWhenTransitionsComplete()V
    .locals 5

    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ActivityTransitionCoordinator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputWhenTransitionsComplete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ActivityTransitionCoordinator"

    const-string/jumbo v3, "setPausedForTransition false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->onTransitionsComplete()V

    :cond_3
    return-void

    :cond_4
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ActivityTransitionCoordinator"

    const-string/jumbo v3, "decor is null.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected backgroundAnimatorComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mBackgroundAnimatorComplete:Z

    return-void
.end method

.method protected cancelPendingTransitions()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return v0
.end method

.method protected captureSharedElementState()Landroid/os/Bundle;
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method protected captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 9

    const/4 v8, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p1, p4}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const-string/jumbo v6, "shared_element:screenLeft"

    iget v7, p5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "shared_element:screenRight"

    iget v7, p5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "shared_element:screenTop"

    iget v7, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "shared_element:screenBottom"

    iget v7, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "shared_element:translationZ"

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "shared_element:elevation"

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v6, "shared_element:windowPositionY"

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v6, p1, p4, p5}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v6, "shared_element:bitmap"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ActivityTransitionCoordinator;->scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I

    move-result v4

    const-string/jumbo v6, "shared_element:scaleType"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_3

    const/16 v6, 0x9

    new-array v3, v6, [F

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const-string/jumbo v6, "shared_element:imageMatrix"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :cond_3
    invoke-virtual {p3, p2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected clearState()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->releaseViewRootPauseInput()V

    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    return-void
.end method

.method protected configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p1

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityTransitionCoordinator;->setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Landroid/app/ActivityTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    return-object p1
.end method

.method public copyMappedViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v10

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-nez v10, :cond_0

    return-object v13

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v0, 0x2

    new-array v6, v0, [I

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    :cond_1
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const/4 v1, 0x0

    if-eqz v12, :cond_3

    const-string/jumbo v0, "shared_element:bitmap"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v0, v7, v11}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    :cond_3
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v13
.end method

.method public getAcceptedNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDecor()Landroid/view/ViewGroup;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method protected getFadeDuration()J
    .locals 2

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMappedNames()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected abstract getViewsTransition()Landroid/transition/Transition;
.end method

.method protected getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method protected hideViews(Ljava/util/ArrayList;)V
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

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isTransitionRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mBackgroundAnimatorComplete:Z

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isViewsTransitionComplete()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    return v0
.end method

.method synthetic lambda$-android_app_ActivityTransitionCoordinator_29192(Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->notifySharedElementEnd(Ljava/util/ArrayList;)V

    return-void
.end method

.method synthetic lambda$-android_app_ActivityTransitionCoordinator_42469(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->setGhostVisibility(I)V

    return-void
.end method

.method protected mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    :cond_1
    return-object v2
.end method

.method protected moveSharedElementWithParent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected moveSharedElementsFromOverlay()V
    .locals 8

    iget-object v7, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v7, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    invoke-virtual {v3}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->removeListener()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v5

    iget-object v7, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v7, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected moveSharedElementsToOverlay()V
    .locals 11

    const/4 v10, 0x0

    iget-object v9, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementMatrices()V

    iget-object v9, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->moveSharedElementWithParent()Z

    move-result v4

    move-object v9, v0

    check-cast v9, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v9}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupport()Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFreeform()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_2
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_4

    iget-object v9, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v9, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Matrix;

    invoke-virtual {v9, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    invoke-static {v8, v0, v7}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    invoke-static {v6, v0}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    new-instance v3, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    invoke-direct {v3, v8, v6, v0}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v9, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected notifySharedElementEnd(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onTransitionsComplete()V
    .locals 0

    return-void
.end method

.method protected pauseInput()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    goto :goto_0
.end method

.method protected scheduleGhostVisibilityChange(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0$1;

    invoke-direct {v1, p1, p0}, Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0$1;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    :cond_0
    return-void
.end method

.method protected scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0;

    invoke-direct {v1, p0, p1}, Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    :cond_0
    return-void
.end method

.method protected setEpicenter()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_0
    invoke-direct {p0, v0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter(Landroid/view/View;)V

    return-void
.end method

.method protected setGhostVisibility(I)V
    .locals 4

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GhostView;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setResultReceiver(Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method protected setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/app/ActivityTransitionCoordinator;->getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v6, p2}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-object v9
.end method

.method protected setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2, v5}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v5}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    if-nez p2, :cond_5

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method protected setTransitioningViewsVisiblity(IZ)V
    .locals 4

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTransitionVisibility(I)V

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected sharedElementTransitionComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    return-void
.end method

.method protected showViews(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/app/ActivityTransitionCoordinator;->showView(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected startTransition(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected stripOffscreenViews()V
    .locals 4

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected transitionStarted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return-void
.end method

.method protected viewsReady(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->setSharedElements(Landroid/util/ArrayMap;)V

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->captureTransitioningViews(Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter()V

    return-void
.end method

.method protected viewsTransitionComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    return-void
.end method
