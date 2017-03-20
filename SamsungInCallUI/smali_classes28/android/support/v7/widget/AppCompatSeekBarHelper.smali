.class Landroid/support/v7/widget/AppCompatSeekBarHelper;
.super Landroid/support/v7/widget/AppCompatProgressBarHelper;
.source "AppCompatSeekBarHelper.java"


# instance fields
.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mView:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/SeekBar;
    .param p2, "drawableManager"    # Landroid/support/v7/widget/AppCompatDrawableManager;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;Landroid/support/v7/widget/AppCompatDrawableManager;)V

    .line 35
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 36
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 37
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 38
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 42
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 43
    return-void
.end method

.method private applyTickMarkTint()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_3

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 130
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 136
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 140
    :cond_3
    return-void
.end method


# virtual methods
.method drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 160
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 161
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 162
    .local v0, "count":I
    if-le v0, v2, :cond_3

    .line 163
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 164
    .local v7, "w":I
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 165
    .local v1, "h":I
    if-ltz v7, :cond_1

    div-int/lit8 v3, v7, 0x2

    .line 166
    .local v3, "halfW":I
    :goto_0
    if-ltz v1, :cond_0

    div-int/lit8 v2, v1, 0x2

    .line 167
    .local v2, "halfH":I
    :cond_0
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v9, v3

    neg-int v10, v2

    invoke-virtual {v8, v9, v10, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 170
    invoke-virtual {v9}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v6, v8, v9

    .line 171
    .local v6, "spacing":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 172
    .local v5, "saveCount":I
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-gt v4, v0, :cond_2

    .line 174
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 175
    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "halfH":I
    .end local v3    # "halfW":I
    .end local v4    # "i":I
    .end local v5    # "saveCount":I
    .end local v6    # "spacing":F
    :cond_1
    move v3, v2

    .line 165
    goto :goto_0

    .line 177
    .restart local v2    # "halfH":I
    .restart local v3    # "halfW":I
    .restart local v4    # "i":I
    .restart local v5    # "saveCount":I
    .restart local v6    # "spacing":F
    :cond_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 180
    .end local v0    # "count":I
    .end local v1    # "h":I
    .end local v2    # "halfH":I
    .end local v3    # "halfW":I
    .end local v4    # "i":I
    .end local v5    # "saveCount":I
    .end local v6    # "spacing":F
    .end local v7    # "w":I
    :cond_3
    return-void
.end method

.method drawableStateChanged()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 150
    .local v0, "tickMark":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 151
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_0
    return-void
.end method

.method getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 146
    :cond_0
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x1

    .line 46
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 48
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar:[I

    const/4 v5, 0x0

    invoke-static {v3, p1, v4, p2, v5}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 52
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_0
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMark:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 56
    .local v2, "tickMark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 58
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 61
    iput-boolean v6, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 64
    :cond_1
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 66
    iput-boolean v6, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 69
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 71
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 72
    return-void
.end method

.method setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 79
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 81
    if-eqz p1, :cond_2

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 84
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 87
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 90
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 91
    return-void
.end method

.method setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 102
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 103
    return-void
.end method

.method setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 114
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 115
    return-void
.end method
