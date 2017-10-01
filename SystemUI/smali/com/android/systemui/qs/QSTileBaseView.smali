.class public Lcom/android/systemui/qs/QSTileBaseView;
.super Landroid/widget/LinearLayout;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private mCollapsedView:Z

.field private final mHandler:Lcom/android/systemui/qs/QSTileBaseView$H;

.field private mIcon:Lcom/android/systemui/qs/QSIconView;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/systemui/qs/QSTileBaseView$H;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/QSTileBaseView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/QSTileBaseView$H;

    iput-object p2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileBaseView;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setPadding(IIII)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileBaseView;->setClipChildren(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileBaseView;->setClipToPadding(Z)V

    iput-boolean p3, p0, Lcom/android/systemui/qs/QSTileBaseView;->mCollapsedView:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileBaseView;->setFocusable(Z)V

    return-void
.end method

.method private newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101045c

    aput v3, v0, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->updateRippleSize(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/qs/QSIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/QSIconView;->setIcon(Lcom/android/systemui/qs/QSTile$State;)V

    const/4 v1, 0x0

    iget-object v4, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f044c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0f02cd

    :goto_0
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ","

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "-"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    instance-of v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    if-eqz v4, :cond_3

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    :cond_3
    return-void

    :cond_4
    const v4, 0x7f0f02ce

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/qs/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSIconView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/QSIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-nez v1, :cond_1

    const v1, 0x7f0f0583

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0f0584

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0f0583

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0f0584

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileBaseView;->updateRippleSize(II)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/QSTileBaseView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTileBaseView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method

.method protected updateRippleSize(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSIconView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eb851ec    # 0.36f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSTileBaseView;->updateRippleSize(III)V

    return-void
.end method

.method protected updateRippleSize(III)V
    .locals 7

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v3, v0, p3

    sub-int v4, v1, p3

    add-int v5, v0, p3

    add-int v6, v1, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    return-void
.end method
