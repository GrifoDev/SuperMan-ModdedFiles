.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field mIsDeviceDefault:Z

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v5, -0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    new-array v3, v4, [I

    iput-object v3, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    new-array v3, v4, [I

    iput-object v3, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    iput-boolean v2, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1110082

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    iget-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090118

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const v3, 0x1040a44

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x3ed

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1030308

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090139

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v12

    move-object/from16 v0, p5

    iput-object v12, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10502f2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    if-lt v12, v9, :cond_0

    move/from16 v5, p2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    if-lt v12, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10502f1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int v3, p3, v4

    sub-int v2, p3, v4

    :goto_1
    const/16 v12, 0x31

    move-object/from16 v0, p5

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz p4, :cond_2

    const v12, 0x10502f5

    :goto_2
    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v12, "TooltipPopup"

    const-string/jumbo v13, "Cannot find app view"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v5, v12, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const v12, 0x10502f4

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v13, 0x0

    aget v14, v12, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-int/2addr v14, v15

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v13, 0x1

    aget v14, v12, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v12, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v12, v6, v6}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v12, v2

    sub-int/2addr v12, v8

    sub-int v10, v12, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v12, v3

    add-int v11, v12, v8

    if-eqz p4, :cond_5

    if-ltz v10, :cond_4

    move-object/from16 v0, p5

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    return-void

    :cond_4
    move-object/from16 v0, p5

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_5
    add-int v12, v11, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-gt v12, v13, :cond_6

    move-object/from16 v0, p5

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_6
    move-object/from16 v0, p5

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public semShowActionItemTooltip(IIILjava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800035

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
