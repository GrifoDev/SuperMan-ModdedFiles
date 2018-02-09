.class public Lcom/android/launcher2/PendingAppWidgetHostView;
.super Lcom/android/launcher2/LauncherAppWidgetHostView;
.source "PendingAppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SETUP_ICON_SIZE_FACTOR:F


# instance fields
.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefaultView:Landroid/view/View;

.field private final mDisabledForSafeMode:Z

.field private mDrawableSizeChanged:Z

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mIconLookupIntent:Landroid/content/Intent;

.field private final mInfo:Lcom/android/launcher2/HomeWidgetItem;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetupTextLayout:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/HomeWidgetItem;Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher2/HomeWidgetItem;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const v0, 0x7f02008b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PendingAppWidgetHostView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PendingAppWidgetHostView;->setWillNotDraw(Z)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PendingAppWidgetHostView;->setElevation(F)V

    :cond_0
    return-void
.end method

.method private updateDrawableBounds()V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getWidth()I

    move-result v2

    sub-int v2, v2, v18

    sub-int v2, v2, v19

    mul-int/lit8 v3, v16, 0x2

    sub-int v5, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int v2, v2, v20

    sub-int v2, v2, v17

    mul-int/lit8 v3, v16, 0x2

    sub-int v11, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v22

    move/from16 v1, v22

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v12, v2

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    mul-float v2, v12, v21

    int-to-float v3, v14

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    int-to-float v2, v14

    div-float v12, v2, v21

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v2, v0

    int-to-float v3, v10

    mul-float v3, v3, v21

    add-float v15, v2, v3

    int-to-float v2, v11

    cmpg-float v2, v15, v2

    if-gez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int v2, v2, v23

    sub-int/2addr v2, v10

    div-int/lit8 v13, v2, 0x2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v10

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3, v13}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v3, v18, v16

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    int-to-float v6, v10

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v3, v20, v16

    iput v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    int-to-float v6, v10

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v3, v18, v16

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v10

    div-int/lit8 v13, v2, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    goto/16 :goto_1
.end method


# virtual methods
.method public applyState()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher2/HomeWidgetItem;

    iget v1, v1, Lcom/android/launcher2/HomeWidgetItem;->installProgress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->applyState()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method public isReadyForClickSetup()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->updateDrawableBounds()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    return-void
.end method

.method public updateIcon(Lcom/android/launcher2/PkgResCache;Landroid/graphics/Bitmap;J)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-ne v3, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v5, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    if-eqz v3, :cond_4

    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher2/FastBitmapDrawable;->setFilterBitmap(Z)V

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-virtual {v0, v6, v6, v3, v4}, Lcom/android/launcher2/FastBitmapDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v7}, Lcom/android/launcher2/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    iput-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-boolean v7, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v2}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher2/HomeWidgetItem;

    iget-object v4, v4, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)V

    iget-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    iget-object v4, v2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v4, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v7}, Lcom/android/launcher2/FastBitmapDrawable;->setFilterBitmap(Z)V

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-virtual {v1, v6, v6, v3, v4}, Lcom/android/launcher2/FastBitmapDrawable;->setBounds(IIII)V

    new-instance v3, Lcom/android/launcher2/PreloadIconDrawable;

    invoke-direct {v3, v1}, Lcom/android/launcher2/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v5, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PendingAppWidgetHostView;->applyState()V

    goto :goto_2
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
