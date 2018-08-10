.class Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public mDensity:I

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mGravity:I

.field public mHeight:I

.field public mId:I

.field public mInsetB:I

.field public mInsetE:I

.field public mInsetL:I

.field public mInsetR:I

.field public mInsetS:I

.field public mInsetT:I

.field public mThemeAttrs:[I

.field public mWidth:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    const/high16 v2, -0x80000000

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 6

    const/high16 v5, -0x80000000

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0xa0

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iget-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v0, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "LayerDrawable"

    const-string/jumbo v4, "Invalid drawable added to LayerDrawable! Drawable already belongs to another owner but does not expose a constant state."

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_1
    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    invoke-static {p3, v3}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    iget v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    :cond_1
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iget v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    if-eq v3, v4, :cond_2

    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iget v4, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    invoke-direct {p0, v3, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->applyDensityScaling(II)V

    :cond_2
    return-void

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private applyDensityScaling(II)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    :cond_1
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    invoke-static {v0, p1, p2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    :cond_2
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    invoke-static {v0, p1, p2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    :cond_3
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

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

.method public final setDensity(I)V
    .locals 2

    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    if-eq v1, p1, :cond_0

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->applyDensityScaling(II)V

    :cond_0
    return-void
.end method
