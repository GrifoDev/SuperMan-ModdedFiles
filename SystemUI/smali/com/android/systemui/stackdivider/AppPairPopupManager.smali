.class public Lcom/android/systemui/stackdivider/AppPairPopupManager;
.super Ljava/lang/Object;
.source "AppPairPopupManager.java"


# instance fields
.field private final mBubblePos:[I

.field private final mCirclePos:[I

.field private mContext:Landroid/content/Context;

.field private mDimLp:Landroid/view/WindowManager$LayoutParams;

.field private mDimView:Landroid/widget/ImageView;

.field private mDirection:I

.field private final mDisplaySizePoint:Landroid/graphics/Point;

.field private mHeightOffset:I

.field private mIsLandScape:Z

.field private mIsNeedGravityToBottom:Z

.field private mIsNeedGravityToRight:Z

.field private mIsRTL:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mVerticalGravity:I

.field private mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsRTL:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    iput-object p1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iput v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mHeightOffset:I

    return-void
.end method

.method private calDirectionOfBubble(ZZ)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v12, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v7

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$StackInfo;

    iget v8, v8, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-ne v8, v9, :cond_1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {p0, v4, p1, v9}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->calStackSize(Landroid/app/ActivityManager$StackInfo;ZI)I

    move-result v5

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$StackInfo;

    iget v8, v8, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-ne v8, v11, :cond_0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {p0, v2, p1, v11}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->calStackSize(Landroid/app/ActivityManager$StackInfo;ZI)I

    move-result v3

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_7

    if-lt v3, v5, :cond_6

    const/4 v1, 0x2

    :cond_3
    :goto_2
    if-eq v1, v9, :cond_4

    if-ne v1, v12, :cond_a

    :cond_4
    move v8, v9

    :goto_3
    iput-boolean v8, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eq v1, v11, :cond_5

    if-ne v1, v12, :cond_c

    :cond_5
    :goto_4
    iput-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    iget-boolean v8, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v8, :cond_d

    const/16 v8, 0x50

    :goto_5
    iput v8, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    return v1

    :cond_6
    const/4 v1, 0x5

    goto :goto_2

    :cond_7
    if-lt v3, v5, :cond_8

    const/4 v1, 0x3

    :goto_6
    if-eqz p2, :cond_3

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    if-ne v1, v11, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    :cond_a
    const/4 v8, 0x2

    if-ne v1, v8, :cond_b

    move v8, v9

    goto :goto_3

    :cond_b
    move v8, v10

    goto :goto_3

    :cond_c
    move v9, v10

    goto :goto_4

    :cond_d
    const/16 v8, 0x30

    goto :goto_5
.end method

.method private calStackSize(Landroid/app/ActivityManager$StackInfo;ZI)I
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v0

    :goto_0
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-ne v3, p3, :cond_1

    iget-object v3, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    :goto_1
    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    goto :goto_1

    :cond_2
    iget-object v3, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    goto :goto_1
.end method


# virtual methods
.method public addAndGetPopupView(Z)Lcom/android/systemui/stackdivider/AppPairPopupView;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsRTL:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsRTL:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->calDirectionOfBubble(ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDirection:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d8

    const/16 v4, 0x20

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v0, v0, 0x5

    :goto_1
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "AppPairToolTip"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/AppPairPopupView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setVariables(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setTextViewMargin(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setOnTouchListeners()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setPopupManager(Lcom/android/systemui/stackdivider/AppPairPopupManager;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getBubbleView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getBubbleView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/stackdivider/AppPairPopupManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/AppPairPopupManager$1;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/stackdivider/AppPairPopupManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/AppPairPopupManager$2;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x903

    const/4 v4, 0x0

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "PopupDimLayer"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    return-object v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/lit8 v0, v0, 0x3

    goto/16 :goto_1

    :catch_0
    move-exception v7

    const-string/jumbo v0, "AppPairToolTip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in addAndGetPopupView() AppPairPopupView and DimView --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method public calBubblePosition([ILandroid/graphics/Rect;)V
    .locals 12

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v3, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10502ba

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0703e4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0703e7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getCircleWidth()I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getTxtView()Landroid/view/View;

    move-result-object v6

    const/4 v9, 0x2

    new-array v7, v9, [I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    aget v10, p1, v9

    sub-int/2addr v10, v3

    aput v10, p1, v9

    :cond_0
    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x0

    aget v10, p1, v10

    sub-int/2addr v9, v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v9, v10

    :goto_1
    const/4 v10, 0x0

    aput v9, p1, v10

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    const/4 v10, 0x1

    aget v10, p1, v10

    sub-int/2addr v9, v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v9, v10

    :goto_2
    const/4 v10, 0x1

    aput v9, p1, v10

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    const/4 v11, 0x0

    aput v10, v9, v11

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v10, 0x1

    aget v10, p1, v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aput v10, v9, v11

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v10, 0x0

    aget v10, v7, v10

    const/4 v11, 0x0

    aput v10, v9, v11

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v10, 0x1

    aget v10, p1, v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v0

    const/4 v11, 0x1

    aput v10, v9, v11

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setNeedTopArrow(Z)V

    :cond_1
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v1

    if-lt v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    add-int/2addr v10, v1

    if-ge v9, v10, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setIsNeedResetToolTipSize(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050158

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    aget v9, p1, v9

    goto/16 :goto_1

    :cond_6
    const/4 v9, 0x1

    aget v9, p1, v9

    goto/16 :goto_2

    :cond_7
    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0703e8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v0

    const/4 v11, 0x0

    aput v10, v9, v11

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v10, 0x1

    aget v10, p1, v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v10, v4

    const/4 v11, 0x1

    aput v10, v9, v11

    goto :goto_3
.end method

.method public reSetBubblePositionAndImage()V
    .locals 9

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iget v5, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDirection:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setBubbleViewImage(I)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const v5, 0x7f0a036c

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v4, v4, 0x1

    :goto_0
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v4, :cond_5

    :cond_0
    move v6, v0

    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v4, :cond_6

    move v5, v0

    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-nez v4, :cond_7

    :cond_1
    move v4, v0

    :goto_3
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-eqz v7, :cond_8

    :cond_2
    :goto_4
    invoke-virtual {v2, v6, v5, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    return-void

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v4, v4, 0x5

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v6, v4

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move v5, v4

    goto :goto_2

    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    goto :goto_3

    :cond_8
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    const/4 v8, 0x1

    aget v0, v7, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "AppPairToolTip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in  AppPairPopupManager::reSetWindowPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public reSetBubbleSize()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getTxtView()Landroid/view/View;

    move-result-object v6

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x2

    new-array v7, v9, [I

    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getCircleWidth()I

    move-result v1

    invoke-virtual {v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getFirstBody()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getFirstLine()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getSecondBody()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getSecondLine()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsLandScape:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    aget v9, v9, v12

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mBubblePos:[I

    aget v10, v10, v12

    sub-int v0, v9, v10

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    iget v10, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mHeightOffset:I

    add-int/2addr v9, v10

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getFirstBody()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getFirstLine()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getSecondBody()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v9}, Lcom/android/systemui/stackdivider/AppPairPopupView;->getSecondLine()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v11, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mHeightOffset:I

    :cond_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    aget v9, v9, v11

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    aget v10, v7, v11

    sub-int v0, v9, v10

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v9, :cond_2

    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    :goto_1
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-boolean v9, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v9, :cond_3

    move v9, v0

    :goto_2
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    move v9, v0

    goto :goto_1

    :cond_3
    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_2
.end method

.method public reSetCirclePosition()V
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const v5, 0x7f0a036a

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v4, :cond_1

    move v6, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v4, :cond_2

    move v5, v3

    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToBottom:Z

    if-eqz v7, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    :cond_0
    invoke-virtual {v1, v6, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mIsNeedGravityToRight:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I

    or-int/lit8 v3, v3, 0x5

    :goto_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v6, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mCirclePos:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move v5, v4

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mVerticalGravity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/lit8 v3, v3, 0x3

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AppPairToolTip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in AppPairPopupManager::reSetCirclePosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupView;->startAnimation(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupManager;->mView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupView;->startAnimation(I)V

    goto :goto_0
.end method
