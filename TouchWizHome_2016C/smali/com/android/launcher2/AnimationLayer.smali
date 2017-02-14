.class public Lcom/android/launcher2/AnimationLayer;
.super Landroid/widget/FrameLayout;
.source "AnimationLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AnimationLayer$Anim;
    }
.end annotation


# static fields
.field private static final BLOCK_EVENTS_TIMEOUT:J = 0x3e8L

.field static final sRootLocationOnScreen:[I


# instance fields
.field private mAnimPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockEvents:Z

.field final mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentMobileKeyboard:I

.field private mCurrentOrientation:I

.field private mDragLastX:I

.field private mDragLastY:I

.field private mDragLocalState:Ljava/lang/Object;

.field private mDragStateDropped:Z

.field private mFirstDrawAfterConfigChange:Z

.field private mLastBlockTime:J

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTmpFPos:[F

.field private final mTmpPos:[I

.field private mViewPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentMobileKeyboard:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentMobileKeyboard:I

    :cond_0
    check-cast p1, Lcom/android/launcher2/Launcher;

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentMobileKeyboard:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentMobileKeyboard:I

    :cond_0
    check-cast p1, Lcom/android/launcher2/Launcher;

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AnimationLayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/AnimationLayer;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    return-wide p1
.end method

.method private cleanupFinishedAnimations()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->recycle()V

    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    check-cast v2, Lcom/android/launcher2/AnimView;

    invoke-virtual {v2}, Lcom/android/launcher2/AnimView;->recycle()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private dispatchOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentMobileKeyboard:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private getNewAnimView(Z)Landroid/view/View;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/launcher2/AnimView;

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/AnimView;-><init>(Landroid/content/Context;)V

    :goto_0
    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_1
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 19

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v14, 0x0

    :cond_0
    :goto_0
    return-object v14

    :cond_1
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/TextView;

    if-nez v2, :cond_2

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher2/MenuAppIconView;

    if-nez v2, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v7

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_6

    move-object/from16 v2, p3

    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v15

    const/16 v18, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    :cond_3
    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v15

    :cond_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/IconMoveContainer;->getIconSize()I

    move-result v15

    :cond_5
    const/4 v2, 0x1

    invoke-static {v6, v15, v15, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_6
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v2, :cond_7

    move-object/from16 v2, p3

    check-cast v2, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->getMenuDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v7

    :cond_7
    if-nez v6, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_9

    move-object/from16 v17, p3

    check-cast v17, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/AppIconView;->IsIconScaleChanging()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/AppIconView;->getPrevIconSize()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/AppIconView;->getPrevIconSize()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_9
    const/4 v14, 0x0

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v13}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZJ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v14

    goto/16 :goto_0
.end method

.method public animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZJ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 14

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher2/AnimationLayer;->getNewAnimView(Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    :goto_1
    const/4 v3, 0x0

    aget v3, p5, v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    const/4 v3, 0x1

    aget v3, p5, v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v2

    iput p1, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    :cond_0
    if-eqz p7, :cond_4

    move-wide/from16 v0, p10

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/AnimationLayer$Anim;->setStartDelay(J)V

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V

    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v3, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    goto/16 :goto_1

    :cond_4
    move-wide/from16 v0, p10

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/AnimationLayer$Anim;->setStartDelay(J)V

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V

    goto/16 :goto_2
.end method

.method public animateWidget(ILjava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;IZJLandroid/graphics/Bitmap;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 12

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher2/AnimationLayer;->getNewAnimView(Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AnimView;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/android/launcher2/AnimView;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p12

    invoke-virtual {v5, v0}, Lcom/android/launcher2/AnimView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/android/launcher2/AnimView;->crossFade(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;II)V

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v3, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/launcher2/AnimView;->setScaleX(F)V

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/launcher2/AnimView;->setScaleY(F)V

    :cond_0
    :goto_0
    const/4 v3, 0x0

    aget v3, p6, v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Lcom/android/launcher2/AnimView;->setTranslationX(F)V

    const/4 v3, 0x1

    aget v3, p6, v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Lcom/android/launcher2/AnimView;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v2

    iput p1, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    if-eqz p2, :cond_1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    :cond_1
    iput-object p3, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mEndCallback:Ljava/lang/Runnable;

    move-wide/from16 v0, p10

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/AnimationLayer$Anim;->setStartDelay(J)V

    if-eqz p4, :cond_2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p13

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/AnimationLayer$Anim;->setupWidgetMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/AnimView;[ILandroid/graphics/Rect;IZLcom/android/launcher2/CellLayout;)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Lcom/android/launcher2/AnimView;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v3}, Lcom/android/launcher2/AnimView;->setScaleX(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v3}, Lcom/android/launcher2/AnimView;->setScaleY(F)V

    goto :goto_0
.end method

.method public animateWidgeteDrop(ILjava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 17

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v16, 0x0

    :goto_0
    return-object v16

    :cond_0
    if-nez p7, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p7

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v8

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    move-object/from16 v9, p6

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v2 .. v15}, Lcom/android/launcher2/AnimationLayer;->animateWidget(ILjava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;IZJLandroid/graphics/Bitmap;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v16

    const-string v2, "AnimationLayer"

    const-string v3, "animateWidgeteDrop "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public areTouchEventsBlocked()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return v0
.end method

.method public buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 7

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    if-nez p4, :cond_0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher2/AnimationLayer;->getNewAnimView(Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v5, p5, v6}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public cancelAnimations()V
    .locals 5

    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    iget-object v4, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    return-void
.end method

.method public cancelAnimationsByGroup(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v7, 0x0

    sget-boolean v13, Lcom/android/launcher2/LauncherApplication;->sDNDBinding:Z

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    if-ne v1, v13, :cond_0

    const/4 v13, 0x0

    sput-object v13, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    :cond_0
    if-nez v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    iget-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v13, :cond_7

    iget-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    :goto_1
    if-eqz v2, :cond_1

    const/4 v13, 0x1

    if-eq v1, v13, :cond_2

    :cond_1
    const/4 v13, 0x3

    if-ne v1, v13, :cond_4

    :cond_2
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    const-string v13, "DragAndDropBinding"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v5, 0x0

    const/4 v13, 0x3

    if-ne v1, v13, :cond_9

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_4

    const-string v13, "itemType"

    const/4 v14, -0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/android/launcher2/LauncherSettings$Favorites;->convertToLocalItemType(I)I

    move-result v11

    if-ltz v11, :cond_4

    if-eqz v5, :cond_4

    new-instance v9, Lcom/android/launcher2/DragState;

    iget-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v9, v5, v11, v13}, Lcom/android/launcher2/DragState;-><init>(Landroid/content/Intent;ILcom/android/launcher2/Launcher;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_a

    :try_start_1
    move-object v0, v9

    check-cast v0, Lcom/android/launcher2/DragState;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    if-eqz v13, :cond_a

    move-object v0, v9

    check-cast v0, Lcom/android/launcher2/DragState;

    move-object v13, v0

    sput-object v13, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    :cond_3
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    :cond_4
    :goto_3
    const/4 v13, 0x1

    if-ne v1, v13, :cond_b

    iput-object v8, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    iput v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    iput v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    const/4 v10, 0x1

    :cond_5
    :goto_4
    if-eqz v10, :cond_6

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    :cond_6
    return v10

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x1

    :try_start_2
    invoke-static {v7, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_2

    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    :catch_0
    move-exception v3

    :goto_5
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_3

    :cond_b
    iget-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-nez v13, :cond_c

    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    goto :goto_4

    :cond_c
    const/4 v13, 0x4

    if-ne v1, v13, :cond_d

    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_4

    :cond_d
    iget-boolean v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    if-nez v13, :cond_5

    const/4 v13, 0x2

    if-eq v1, v13, :cond_e

    const/4 v13, 0x3

    if-ne v1, v13, :cond_f

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    iput v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    iput v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    const/4 v13, 0x3

    if-ne v1, v13, :cond_f

    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    :cond_f
    const/4 v10, 0x1

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v8, v9

    goto :goto_5

    :cond_10
    move-object v8, v9

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsConfigChanged:Z

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v3, v4, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget v4, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentMobileKeyboard:I

    if-eq v3, v4, :cond_4

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->requestLayout()V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    invoke-virtual {p0, p0}, Lcom/android/launcher2/AnimationLayer;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    instance-of v1, p2, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/android/launcher2/AnimView;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sIsConfigChanged:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-boolean v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public findExistingAnimation(Landroid/view/View;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v0

    :goto_0
    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    aget v3, v0, v5

    sub-int/2addr v2, v3

    aput v2, v1, v5

    return-object v1

    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[IZ)[I
    .locals 16

    if-nez p3, :cond_0

    const/4 v12, 0x2

    new-array v0, v12, [I

    move-object/from16 p3, v0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-object p3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleX(F)V

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget v13, p3, v13

    int-to-float v13, v13

    aput v13, v8, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget v13, p3, v13

    int-to-float v13, v13

    aput v13, v8, v12

    const/4 v12, 0x1

    aget v13, v8, v12

    sget-object v14, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    sub-float/2addr v13, v14

    aput v13, v8, v12

    if-eqz p2, :cond_7

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v12, :cond_2

    move-object/from16 v12, p1

    check-cast v12, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v12

    iget v9, v12, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    :cond_2
    iget v12, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    const/4 v5, 0x0

    if-nez p4, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    int-to-float v5, v12

    :cond_3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :cond_4
    :goto_1
    const/4 v12, 0x0

    aget v13, v8, v12

    mul-float v14, v4, v10

    add-float/2addr v13, v14

    aput v13, v8, v12

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v10, v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v3, v12

    const/4 v12, 0x0

    aget v13, v8, v12

    mul-float v14, v3, v10

    sub-float v14, v3, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    aput v13, v8, v12

    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v12, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleY()F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    :cond_6
    :goto_2
    const/4 v12, 0x1

    aget v13, v8, v12

    mul-float v14, v5, v11

    add-float/2addr v13, v14

    aput v13, v8, v12

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v2, v12

    const/4 v12, 0x1

    aget v13, v8, v12

    mul-float v14, v2, v11

    sub-float v14, v2, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    aput v13, v8, v12

    :cond_7
    const/4 v12, 0x0

    const/4 v13, 0x0

    aget v13, v8, v13

    float-to-int v13, v13

    aput v13, p3, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget v13, v8, v13

    float-to-int v13, v13

    aput v13, p3, v12

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1

    :catch_1
    move-exception v6

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method public getMenuDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/ShadowBuilder;->getTouch()[I

    move-result-object v0

    :goto_0
    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    aget v3, v0, v5

    sub-int/2addr v2, v3

    aput v2, v1, v5

    return-object v1

    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOnScreen([I)V

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsConfigChanged:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget v3, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentMobileKeyboard:I

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->bindWidgetsAfterConfigChange()V

    return-void
.end method

.method public updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher2/AnimationLayer$Anim;->update([IIZ)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
