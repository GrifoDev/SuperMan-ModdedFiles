.class public Lcom/android/launcher2/HomeEditBar;
.super Landroid/widget/LinearLayout;
.source "HomeEditBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
.implements Lcom/android/launcher2/CancelDrawable$CancelAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeEditBar$Item;
    }
.end annotation


# static fields
.field public static final ANIMATION_DELAY_DURATION:I = 0x10a

.field static final DROP_ANIMATION_DELAY:I = 0xa6

.field static final DROP_ANIMATION_DURATION:I = 0x10a

.field private static final TAG:Ljava/lang/String; = "HomeEditBar"

.field private static final TOUCH_DRAG_DELETE:I = 0x1

.field private static final TOUCH_DRAG_NORMAL:I


# instance fields
.field private mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

.field private mCancel:Lcom/android/launcher2/HomeEditBar$Item;

.field private mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

.field private mCurrentAnimatorRes:I

.field private mDelete:Lcom/android/launcher2/HomeEditBar$Item;

.field private mDisable:Lcom/android/launcher2/HomeEditBar$Item;

.field private mDragstate:I

.field mDropAnimator:Landroid/animation/Animator;

.field private mDropped:Z

.field private mEntered:Z

.field private mHideAnimatorRes:I

.field private mIsDragMinDist:F

.field private mIsFirstDragX:F

.field private mIsFirstDragY:F

.field private mIsNeedDelay:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeEditBar$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Lcom/android/launcher2/HomeEditBar$Item;

.field private mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

.field private mNeedDragSkip:Z

.field private mOldDragEvent:I

.field private mOrientation:I

.field private mPosition:I

.field private mShowAnimatorRes:I

.field private mShowPosted:Z

.field private mTopMargin:I

.field private mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

.field private mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

.field private mVisibleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HomeEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/HomeEditBar$Item;-><init>(Lcom/android/launcher2/HomeEditBar;Lcom/android/launcher2/HomeEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v1, Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/HomeEditBar$Item;-><init>(Lcom/android/launcher2/HomeEditBar;Lcom/android/launcher2/HomeEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v1, Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/HomeEditBar$Item;-><init>(Lcom/android/launcher2/HomeEditBar;Lcom/android/launcher2/HomeEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v1, Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/HomeEditBar$Item;-><init>(Lcom/android/launcher2/HomeEditBar;Lcom/android/launcher2/HomeEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v1, Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/HomeEditBar$Item;-><init>(Lcom/android/launcher2/HomeEditBar;Lcom/android/launcher2/HomeEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v1, Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/HomeEditBar$Item;-><init>(Lcom/android/launcher2/HomeEditBar;Lcom/android/launcher2/HomeEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v1, Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/HomeEditBar$Item;-><init>(Lcom/android/launcher2/HomeEditBar;Lcom/android/launcher2/HomeEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v1, Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/HomeEditBar$Item;-><init>(Lcom/android/launcher2/HomeEditBar;Lcom/android/launcher2/HomeEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iput v2, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mIsNeedDelay:Z

    iput v2, p0, Lcom/android/launcher2/HomeEditBar;->mDragstate:I

    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    const/high16 v1, 0x42a00000    # 80.0f

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mIsDragMinDist:F

    iput v4, p0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragX:F

    iput v4, p0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragY:F

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mOldDragEvent:I

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/HomeEditBar;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/HomeEditBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeEditBar;->setContainerMargin(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/launcher2/HomeEditBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    return-object v0
.end method

.method private addToPersonal(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeEditBar;->doAddToPersonal(Lcom/android/launcher2/BaseItem;)V

    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v0, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v3, v3, v3}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iput-boolean v4, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v3, v3, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private animateDropOnDragBar(Lcom/android/launcher2/DragState;Landroid/view/DragEvent;Landroid/widget/ImageView;)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v15

    if-nez v15, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    const/high16 v13, 0x3f800000    # 1.0f

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    instance-of v15, v14, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v15, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    check-cast v14, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v14}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v15

    iget v13, v15, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/Launcher;

    invoke-virtual {v15}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v6

    const/4 v15, 0x0

    aget v10, v6, v15

    const/4 v15, 0x1

    aget v11, v6, v15

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v13

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v8, v15, v16

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v9, v15, v16

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v4, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/launcher2/HomeView$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v7, v15, v0}, Lcom/android/launcher2/HomeView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/android/launcher2/HomeView;->addView(Landroid/view/View;)V

    const/4 v15, 0x5

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    sget-object v17, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Landroid/view/View;->X:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    int-to-float v0, v10

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    int-to-float v0, v8

    move/from16 v20, v0

    aput v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget-object v17, Landroid/view/View;->Y:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    int-to-float v0, v11

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    int-to-float v0, v9

    move/from16 v20, v0

    aput v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    sget-object v17, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v4, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/launcher2/HomeEditBar;->mDropAnimator:Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeEditBar;->mDropAnimator:Landroid/animation/Animator;

    new-instance v16, Lcom/android/launcher2/HomeEditBar$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/HomeEditBar$2;-><init>(Lcom/android/launcher2/HomeEditBar;Landroid/widget/ImageView;)V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeEditBar;->mDropAnimator:Landroid/animation/Animator;

    const-wide/16 v16, 0x10a

    invoke-virtual/range {v15 .. v17}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeEditBar;->mDropAnimator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private cancel(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v8

    :pswitch_0
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, p2, p3, v1}, Lcom/android/launcher2/HomeEditBar;->animateDropOnDragBar(Lcom/android/launcher2/DragState;Landroid/view/DragEvent;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v0, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v8, v8, v8}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HCMS"

    const-string v3, "Cancel"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :pswitch_1
    iput-boolean v6, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v8, v6, v6}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v1, :cond_0

    iput-boolean v6, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v8, v6, v6}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iput-boolean v6, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v8, v8, v6}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 24

    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFolderItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-static {v4, v6, v5, v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/HomeFolderItem;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/launcher2/DragState;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/HomeEditBar;->animateDropOnDragBar(Lcom/android/launcher2/DragState;Landroid/view/DragEvent;Landroid/widget/ImageView;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Launcher;->setRemoveReadyItem(Lcom/android/launcher2/BaseItem;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    new-instance v12, Ljava/util/Date;

    move-wide/from16 v0, v18

    invoke-direct {v12, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm:ss"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v4, "homeEditBarDelete"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    const-string v4, "HomeEditBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete::item: ItemType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / PackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/HomeEditBar;->animateDropOnDragBar(Lcom/android/launcher2/DragState;Landroid/view/DragEvent;Landroid/widget/ImageView;)V

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->onDelete()V

    :cond_4
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, "HomeEditBar"

    const-string v5, "TTTT folder icon view is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v15, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v23

    if-eqz v23, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    new-instance v13, Lcom/android/launcher2/DragState;

    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/HomeItem;

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/DragState;->dropItemtoTarget(Landroid/view/View;Landroid/view/View;IIII)V

    invoke-virtual {v13}, Lcom/android/launcher2/DragState;->onDelete()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v13, Lcom/android/launcher2/DragState;

    invoke-virtual {v14}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    invoke-virtual {v13}, Lcom/android/launcher2/DragState;->onDelete()V

    goto/16 :goto_1

    :pswitch_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/HomeEditBar;->setAngleDirectionForAnimation(Landroid/view/DragEvent;Lcom/android/launcher2/HomeEditBar$Item;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/HomeEditBar;->setAngleDirectionForAnimation(Landroid/view/DragEvent;Lcom/android/launcher2/HomeEditBar$Item;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private disable(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v8

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeEditBar;->showDisableConfirmationDialog(Lcom/android/launcher2/BaseItem;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, p2, p3, v1}, Lcom/android/launcher2/HomeEditBar;->animateDropOnDragBar(Lcom/android/launcher2/DragState;Landroid/view/DragEvent;Landroid/widget/ImageView;)V

    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v0, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v8, v8, v8}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HCMS"

    const-string v3, "turn off"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :pswitch_1
    iput-boolean v6, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v8, v6, v6}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v1, :cond_0

    iput-boolean v6, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v8, v6, v6}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v8, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iput-boolean v6, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, p3, v1}, Lcom/android/launcher2/HomeEditBar;->setAngleDirectionForAnimation(Landroid/view/DragEvent;Lcom/android/launcher2/HomeEditBar$Item;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v8, v8, v6}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, p3, v1}, Lcom/android/launcher2/HomeEditBar;->setAngleDirectionForAnimation(Landroid/view/DragEvent;Lcom/android/launcher2/HomeEditBar$Item;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private doAddToPersonal(Lcom/android/launcher2/BaseItem;)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.samsung.intent.action.LAUNCH_PERSONA_SHORTCUT"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "userId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "persona_shortcut://"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "component"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "label"

    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "iconBitmap"

    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "personalId"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "commandType"

    const-string v6, "createShortcut"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v3}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "HomeEditBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not call android.os.PersonaManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "HomeEditBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not call getKnoxInfoForApp."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private editBarBackGroundVI(Landroid/widget/ImageView;Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->editBarBackGroundVI(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method private initRotationHelperStyle(Lcom/android/launcher2/HomeEditBar$Item;)V
    .locals 3

    const v2, 0x7f0e0025

    const v1, 0x7f0e0004

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    goto :goto_0
.end method

.method private lock(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iput-boolean v5, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v5, v5, v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->setLockedViewFromDrag(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, p1, Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_2

    const/16 v2, 0x70

    check-cast p1, Lcom/android/launcher2/FolderItem;

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    const-string v4, "request_lock"

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/FolderItem;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x70

    :try_start_1
    const-string v3, "request_lock"

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/BaseItem;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v5, v3, v3}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v5, v3, v3}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v5, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v5, v5, v3}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private moveApps(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, p2, p3, v1}, Lcom/android/launcher2/HomeEditBar;->animateDropOnDragBar(Lcom/android/launcher2/DragState;Landroid/view/DragEvent;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v3, v3, v3}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher2/IconMoveContainer;->loadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v3, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v3, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iput-boolean v4, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private setAngleDirectionForAnimation(Landroid/view/DragEvent;Lcom/android/launcher2/HomeEditBar$Item;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DeleteDrawable;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeleteDrawable;->setAngleDirection(F)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DeleteDrawable;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeleteDrawable;->setAngleDirection(F)V

    goto :goto_0
.end method

.method private setAnimatorsForOrientation()V
    .locals 2

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v0, v1, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v1, 0x7f05002a

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    const v1, 0x7f05002c

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    :goto_0
    return-void

    :pswitch_1
    const v1, 0x7f050021

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    const v1, 0x7f050022

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    :pswitch_2
    const v1, 0x7f050027

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    const v1, 0x7f050028

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    :pswitch_3
    const/high16 v1, 0x7f050000

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    const v1, 0x7f050001

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setContainerMargin(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setDrawableForOrientation(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$600(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$600(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setDrawablesForOrientation()V
    .locals 4

    const/4 v2, 0x4

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v1, v2, 0x4

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private setInitialAnimationParameter()V
    .locals 4

    const v3, 0x7f0e0024

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    invoke-static {v3, p0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/LinearLayout;)V

    invoke-static {v3, p0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeEditBar;->initRotationHelperStyle(Lcom/android/launcher2/HomeEditBar$Item;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeEditBar;->initRotationHelperStyle(Lcom/android/launcher2/HomeEditBar$Item;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeEditBar;->initRotationHelperStyle(Lcom/android/launcher2/HomeEditBar$Item;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeEditBar;->initRotationHelperStyle(Lcom/android/launcher2/HomeEditBar$Item;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeEditBar;->initRotationHelperStyle(Lcom/android/launcher2/HomeEditBar$Item;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeEditBar;->initRotationHelperStyle(Lcom/android/launcher2/HomeEditBar$Item;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeEditBar;->initRotationHelperStyle(Lcom/android/launcher2/HomeEditBar$Item;)V

    return-void
.end method

.method private setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    :cond_0
    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setActivated(Z)V

    return-void
.end method

.method private showDisableConfirmationDialog(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->setRemoveReadyItem(Lcom/android/launcher2/BaseItem;)V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeShortcutItem;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeShortcutItem;->makeAppItem(Lcom/android/launcher2/HomeShortcutItem;)Lcom/android/launcher2/AppItem;

    move-result-object p1

    :cond_0
    sget-object v0, Lcom/android/launcher2/HomeEditBar$3;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/Launcher;->callDisableDialog(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private uninstall(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v9

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/launcher2/HomeEditBar;->animateDropOnDragBar(Lcom/android/launcher2/DragState;Landroid/view/DragEvent;Landroid/widget/ImageView;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->setRemoveReadyItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/app/FragmentManager;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    iput-boolean v9, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v7, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v9, v9, v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v9, v1, v1}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v9, v1, v1}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v9, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iput-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, p3, v0}, Lcom/android/launcher2/HomeEditBar;->setAngleDirectionForAnimation(Landroid/view/DragEvent;Lcom/android/launcher2/HomeEditBar$Item;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v9, v9, v1}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, p3, v0}, Lcom/android/launcher2/HomeEditBar;->setAngleDirectionForAnimation(Landroid/view/DragEvent;Lcom/android/launcher2/HomeEditBar$Item;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private unlock(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iput-boolean v5, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v5, v5, v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->setLockedViewFromDrag(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, p1, Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_2

    const/16 v2, 0x71

    check-cast p1, Lcom/android/launcher2/FolderItem;

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    const-string v4, "request_unlock"

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/FolderItem;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x71

    :try_start_1
    const-string v3, "request_unlock"

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/BaseItem;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v5, v3, v3}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v5, v3, v3}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v5, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v2, v5, v5, v3}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public changeColor(I)V
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0063

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v4, v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0062

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v1, v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0001

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v6}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeEditBar$Item;

    if-eqz v3, :cond_0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8, v1, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0061

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v4, v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v1, v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002d

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public checkOver(IILandroid/widget/FrameLayout;)Z
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/HomeEditBar;->mTopMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/HomeEditBar;->mTopMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_20

    if-eqz p4, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    const/16 v18, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v18

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v20

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v18, :cond_10

    const/16 v24, 0x1

    :goto_0
    move-object/from16 v0, p4

    instance-of v0, v0, Lcom/android/launcher2/FolderItem;

    move/from16 v19, v0

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v2, :cond_1

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v2, :cond_11

    :cond_1
    const/4 v14, 0x1

    :goto_1
    if-eqz v24, :cond_12

    if-eqz v19, :cond_12

    move-object/from16 v2, p4

    check-cast v2, Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v22, 0x1

    :goto_2
    if-eqz v24, :cond_13

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isShouldHideBar(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v23, 0x1

    :goto_3
    if-eqz v24, :cond_14

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isLockedApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v21, 0x1

    :goto_4
    if-eqz v24, :cond_15

    if-eqz v14, :cond_15

    if-eqz v20, :cond_15

    if-nez v22, :cond_15

    if-nez v21, :cond_15

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_15

    if-nez v23, :cond_15

    const/4 v9, 0x1

    :goto_5
    if-eqz v24, :cond_16

    if-eqz v14, :cond_16

    if-eqz v20, :cond_16

    if-nez v21, :cond_2

    if-eqz v22, :cond_16

    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_16

    if-nez v23, :cond_16

    const/4 v10, 0x1

    :goto_6
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v2, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_3

    move-object/from16 v2, p4

    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    check-cast p4, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/launcher2/HomeShortcutItem;->makeAppItem(Lcom/android/launcher2/HomeShortcutItem;)Lcom/android/launcher2/AppItem;

    move-result-object p4

    :cond_3
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_17

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v2, p4

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuAppModel;->canDisableable(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v16, 0x1

    :goto_7
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_18

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v2, p4

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuAppModel;->canUninstallable2(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/FolderItem;

    if-nez v2, :cond_19

    const/4 v12, 0x1

    :goto_9
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_1a

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v2, :cond_1a

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/HomePendingWidget;

    if-nez v2, :cond_4

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_1b

    :cond_4
    const/4 v8, 0x1

    :goto_b
    move-object/from16 v0, p4

    instance-of v13, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-nez v8, :cond_1c

    if-nez v6, :cond_1c

    if-eqz v22, :cond_5

    if-nez v20, :cond_1c

    :cond_5
    const/4 v11, 0x1

    :goto_c
    if-eqz v6, :cond_1d

    if-eqz v12, :cond_1d

    if-eqz v16, :cond_1d

    const/4 v5, 0x1

    :goto_d
    if-eqz v6, :cond_1e

    if-eqz v12, :cond_1e

    if-eqz v17, :cond_1e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1f

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-nez v2, :cond_1f

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/LauncherApplication;->isPossibleAddToPersonal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v7, 0x1

    :goto_f
    new-instance v2, Lcom/android/launcher2/HomeEditBar$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/launcher2/HomeEditBar$1;-><init>(Lcom/android/launcher2/HomeEditBar;ZZZZZZZZZZZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    :cond_7
    :goto_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void

    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_3

    :cond_14
    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_1c
    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_d

    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_e

    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_f

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    if-eqz v2, :cond_7

    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    goto/16 :goto_10
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragY:F

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public getNeedDragSkip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    return v0
.end method

.method public isNeedDelay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mIsNeedDelay:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    if-ne v0, v1, :cond_8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # invokes: Lcom/android/launcher2/HomeEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1600(Lcom/android/launcher2/HomeEditBar$Item;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # invokes: Lcom/android/launcher2/HomeEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1600(Lcom/android/launcher2/HomeEditBar$Item;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # invokes: Lcom/android/launcher2/HomeEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1600(Lcom/android/launcher2/HomeEditBar$Item;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # invokes: Lcom/android/launcher2/HomeEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1600(Lcom/android/launcher2/HomeEditBar$Item;)V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # invokes: Lcom/android/launcher2/HomeEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1600(Lcom/android/launcher2/HomeEditBar$Item;)V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # invokes: Lcom/android/launcher2/HomeEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1600(Lcom/android/launcher2/HomeEditBar$Item;)V

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # invokes: Lcom/android/launcher2/HomeEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1600(Lcom/android/launcher2/HomeEditBar$Item;)V

    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # invokes: Lcom/android/launcher2/HomeEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1600(Lcom/android/launcher2/HomeEditBar$Item;)V

    :cond_8
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setInitialAnimationParameter()V

    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->onAnimationRepeat(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onBulgeAnimationEnded()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$600(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mIsNeedDelay:Z

    return-void
.end method

.method public onBulgeAnimationStarted()V
    .locals 7

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher2/HomeEditBar;->mIsNeedDelay:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050035

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$600(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onCancelAnimationEnded()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$600(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public onCancelAnimationStarted()V
    .locals 8

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0xe9

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050035

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$600(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050003

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatingItem:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/launcher2/HomeEditBar$Item;->access$600(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setInitialAnimationParameter()V

    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mTopMargin:I

    :cond_0
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 23

    const/4 v15, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getVisibility()I

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v14

    :goto_1
    instance-of v0, v14, Lcom/android/launcher2/DragState;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object v8, v14

    check-cast v8, Lcom/android/launcher2/DragState;

    invoke-virtual {v8}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0900f3

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0901d2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    add-int v9, v10, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragX:F

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-ltz v19, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragX:F

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    cmpl-float v19, v19, v20

    if-lez v19, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragY:F

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_6
    sget-object v14, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto/16 :goto_1

    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragY:F

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    goto :goto_2

    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragX:F

    move/from16 v19, v0

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v19, v19, v20

    if-nez v19, :cond_13

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragY:F

    move/from16 v19, v0

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v19, v19, v20

    if-nez v19, :cond_14

    const/4 v6, 0x0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsDragMinDist:F

    move/from16 v19, v0

    cmpg-float v19, v19, v5

    if-lez v19, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsDragMinDist:F

    move/from16 v19, v0

    cmpg-float v19, v19, v6

    if-gtz v19, :cond_15

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mOldDragEvent:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    const/high16 v19, -0x40800000    # -1.0f

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragY:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragX:F

    const-string v19, "HomeEditBar"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "enter EditBar delete - distX: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", distY : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/HomeEditBar;->mOldDragEvent:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/android/launcher2/HomeEditBar;->delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1700(Lcom/android/launcher2/HomeEditBar$Item;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :cond_f
    :goto_5
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    :cond_10
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    invoke-virtual {v8}, Lcom/android/launcher2/DragState;->onEnd()V

    sget-object v19, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v19, :cond_11

    sget-object v19, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_11
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    :cond_12
    move/from16 v19, v15

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragX:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mIsFirstDragY:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v6

    goto/16 :goto_4

    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    :cond_16
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/android/launcher2/HomeEditBar;->disable(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1700(Lcom/android/launcher2/HomeEditBar$Item;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/android/launcher2/HomeEditBar;->uninstall(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1700(Lcom/android/launcher2/HomeEditBar$Item;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/android/launcher2/HomeEditBar;->cancel(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1700(Lcom/android/launcher2/HomeEditBar$Item;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/android/launcher2/HomeEditBar;->addToPersonal(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1700(Lcom/android/launcher2/HomeEditBar$Item;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/android/launcher2/HomeEditBar;->moveApps(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1700(Lcom/android/launcher2/HomeEditBar$Item;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/android/launcher2/HomeEditBar;->lock(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1700(Lcom/android/launcher2/HomeEditBar$Item;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/android/launcher2/HomeEditBar;->unlock(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$1700(Lcom/android/launcher2/HomeEditBar$Item;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mDragstate:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/launcher2/HomeEditBar;->editBarBackGroundVI(Landroid/widget/ImageView;Z)V

    :cond_1e
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/HomeEditBar;->mDragstate:I

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mDragstate:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    add-int v20, v20, v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mTopMargin:I

    move/from16 v21, v0

    add-int v21, v21, v19

    move-object/from16 v19, p1

    check-cast v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeEditBar;->checkOver(IILandroid/widget/FrameLayout;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeEditBar;->mDragstate:I

    move/from16 v19, v0

    if-nez v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v19

    if-nez v19, :cond_1f

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeEditBar;->setAngleDirectionForAnimation(Landroid/view/DragEvent;Lcom/android/launcher2/HomeEditBar$Item;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/HomeEditBar;->setStates(Lcom/android/launcher2/HomeEditBar$Item;ZZZ)V

    :cond_1f
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/launcher2/HomeEditBar;->editBarBackGroundVI(Landroid/widget/ImageView;Z)V

    if-eqz v13, :cond_20

    sget-object v19, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    :cond_20
    iget-object v12, v8, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v12, Lcom/android/launcher2/CellLayout;

    if-eqz v12, :cond_21

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    :cond_21
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/HomeEditBar;->mDragstate:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v19

    if-eqz v19, :cond_10

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/QuickOptionsPopup;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    goto/16 :goto_6

    :pswitch_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/launcher2/HomeEditBar;->editBarBackGroundVI(Landroid/widget/ImageView;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/Workspace;->setIsDroppedOnEditBar(Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getCurrentQuickoptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v19

    if-eqz v19, :cond_10

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getCurrentQuickoptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    goto/16 :goto_6

    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/HomeEditBar;->mDragstate:I

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 15

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_2

    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f10005b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0, v10}, Lcom/android/launcher2/HomeEditBar$Item;->access$302(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0, v12}, Lcom/android/launcher2/HomeEditBar$Item;->access$602(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0, v13}, Lcom/android/launcher2/HomeEditBar$Item;->access$502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    const v0, 0x7f100059

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v14, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x1

    sget-object v7, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->DELETE:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    const/4 v8, 0x1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;Z)V

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v14, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    aput-object v6, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1702(Lcom/android/launcher2/HomeEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_2
    const v0, 0x7f100047

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_4

    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f10004b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0, v10}, Lcom/android/launcher2/HomeEditBar$Item;->access$302(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0, v12}, Lcom/android/launcher2/HomeEditBar$Item;->access$602(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0, v13}, Lcom/android/launcher2/HomeEditBar$Item;->access$502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    const v0, 0x7f100048

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v14, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v7, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->DISABLE:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    const/4 v8, 0x1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;Z)V

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v14, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1702(Lcom/android/launcher2/HomeEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_4
    const v0, 0x7f10004c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_6

    const v0, 0x7f10004e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f10004f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0, v10}, Lcom/android/launcher2/HomeEditBar$Item;->access$302(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0, v12}, Lcom/android/launcher2/HomeEditBar$Item;->access$602(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0, v13}, Lcom/android/launcher2/HomeEditBar$Item;->access$502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    const v0, 0x7f10004d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v14, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v7, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->UNINSTALL:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    const/4 v8, 0x1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;Z)V

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v14, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1702(Lcom/android/launcher2/HomeEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_6
    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_8

    const v0, 0x7f100052

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f100053

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0, v10}, Lcom/android/launcher2/HomeEditBar$Item;->access$302(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0, v12}, Lcom/android/launcher2/HomeEditBar$Item;->access$602(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0, v13}, Lcom/android/launcher2/HomeEditBar$Item;->access$502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    const v0, 0x7f100051

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v1, Lcom/android/launcher2/AddToPersonalDrawable;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/AddToPersonalDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1702(Lcom/android/launcher2/HomeEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_8
    const v0, 0x7f100054

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_a

    const v0, 0x7f100056

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f100057

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_a

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0, v10}, Lcom/android/launcher2/HomeEditBar$Item;->access$302(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0, v12}, Lcom/android/launcher2/HomeEditBar$Item;->access$602(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0, v13}, Lcom/android/launcher2/HomeEditBar$Item;->access$502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    const v0, 0x7f100055

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    new-instance v1, Lcom/android/launcher2/CancelDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/launcher2/HomeEditBar$Item;->access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v1, v2, v5, p0}, Lcom/android/launcher2/CancelDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/CancelDrawable$CancelAnimationListener;)V

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1702(Lcom/android/launcher2/HomeEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_a
    const v0, 0x7f100060

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_b

    const v0, 0x7f100062

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f100063

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_b

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0, v10}, Lcom/android/launcher2/HomeEditBar$Item;->access$302(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0, v13}, Lcom/android/launcher2/HomeEditBar$Item;->access$502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0, v12}, Lcom/android/launcher2/HomeEditBar$Item;->access$602(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    const v0, 0x7f100061

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1702(Lcom/android/launcher2/HomeEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_b
    const v0, 0x7f100064

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_c

    const v0, 0x7f100066

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f100067

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_c

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0, v10}, Lcom/android/launcher2/HomeEditBar$Item;->access$302(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0, v13}, Lcom/android/launcher2/HomeEditBar$Item;->access$502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0, v12}, Lcom/android/launcher2/HomeEditBar$Item;->access$602(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    const v0, 0x7f100065

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1702(Lcom/android/launcher2/HomeEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_c
    const v0, 0x7f10005c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f10005e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_d

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0, v10}, Lcom/android/launcher2/HomeEditBar$Item;->access$302(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0, v12}, Lcom/android/launcher2/HomeEditBar$Item;->access$602(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0, v13}, Lcom/android/launcher2/HomeEditBar$Item;->access$502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    const v0, 0x7f10005d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$1502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    # setter for: Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar$Item;->access$1702(Lcom/android/launcher2/HomeEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_d
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->reloadLayout(I)V

    return-void

    :cond_e
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public reloadLayout(I)V
    .locals 4

    const v3, 0x7f090127

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mTopMargin:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_3
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setNeedDragSkip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeEditBar;->mNeedDragSkip:Z

    return-void
.end method
