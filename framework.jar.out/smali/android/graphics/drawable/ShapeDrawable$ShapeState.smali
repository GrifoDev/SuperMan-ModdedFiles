.class final Landroid/graphics/drawable/ShapeDrawable$ShapeState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShapeState"
.end annotation


# instance fields
.field mAlpha:I

.field mChangingConfigurations:I

.field mIntrinsicHeight:I

.field mIntrinsicWidth:I

.field mPadding:Landroid/graphics/Rect;

.field final mPaint:Landroid/graphics/Paint;

.field mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

.field mShape:Landroid/graphics/drawable/shapes/Shape;

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    sget-object v0, Landroid/graphics/drawable/ShapeDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    sget-object v1, Landroid/graphics/drawable/ShapeDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 v1, 0xff

    iput v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    iget v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v1}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    :cond_1
    iget v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    iput v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    iget v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    iput v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    iget v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    iput v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    iput-object v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    goto :goto_0
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget v1, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable;)V

    return-object v0
.end method
