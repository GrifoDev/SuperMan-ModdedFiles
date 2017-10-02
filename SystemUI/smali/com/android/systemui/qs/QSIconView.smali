.class public Lcom/android/systemui/qs/QSIconView;
.super Landroid/view/ViewGroup;
.source "QSIconView.java"


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAnimationEnabled:Z

.field protected final mIcon:Landroid/view/View;

.field protected final mIconSizePx:I

.field protected final mTilePaddingBelowIconPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "QSIconView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSIconView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSIconView;->mIconSizePx:I

    const v1, 0x7f0d020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSIconView;->mTilePaddingBelowIconPx:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSIconView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public disableAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    return-void
.end method

.method protected final exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getColor(Lcom/android/systemui/qs/QSTile$State;)I
    .locals 9

    sget-boolean v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAllowQsColorChange:Z

    const v7, 0x7f0b00f9

    instance-of v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    if-eqz v4, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v4, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    move-result v4

    if-eqz v8, :cond_0

    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOnColor:I

    :cond_0
    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    const/high16 v4, 0x1000000

    mul-int/2addr v4, v2

    const v5, 0xffffff

    add-int/2addr v4, v5

    and-int/lit8 v3, v4, -0x1

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    move-result v4

    if-eqz v8, :cond_1

    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOnColor:I

    :cond_1
    and-int v1, v4, v3

    :goto_0
    sget-boolean v4, Lcom/android/systemui/qs/QSIconView;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "QSIconView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getColor : Label = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", color = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    iget-boolean v4, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-eqz v8, :cond_4

    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOnColor:I

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    const v5, 0x7f0b00fa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-eqz v8, :cond_6

    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOffColor:I

    :cond_6
    goto :goto_0

    :cond_7
    const-string/jumbo v4, "QSIconView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getColor : Label = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", state is not BooleanState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4
.end method

.method protected getIconMeasureMode()I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method protected final layout(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/systemui/qs/QSIconView;->layout(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/QSIconView;->mIconSizePx:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSIconView;->exactly(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getIconMeasureMode()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/QSIconView;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSIconView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile$Icon;->getPadding()I

    move-result v2

    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    instance-of v3, v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const v4, 0x7f130034

    invoke-virtual {p1, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, v5, v2, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    instance-of v3, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_2
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b00af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_2
    return-void

    :cond_3
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSIconView;->getColor(Lcom/android/systemui/qs/QSTile$State;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2
.end method

.method public setIcon(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSIconView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    return-void
.end method
