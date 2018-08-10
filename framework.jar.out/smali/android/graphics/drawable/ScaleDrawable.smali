.class public Landroid/graphics/drawable/ScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ScaleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IFF)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p3, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p4, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static getPercent(Landroid/content/res/TypedArray;IF)F
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v5, v5, p2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v3

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    return v3

    :cond_2
    return p2
.end method

.method private updateLocalState()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-set0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;[I)[I

    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    iget-boolean v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v0

    aget v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": <scale> tag requires a \'drawable\' attribute or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v2, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/ScaleDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x2

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_1

    const/4 v2, -0x3

    return v2

    :cond_1
    return v1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/ScaleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13

    const v12, 0x461c4000    # 10000.0f

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v4, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-boolean v10, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_0

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    :goto_0
    sub-int v0, v1, v8

    rsub-int v3, v9, 0x2710

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v12

    float-to-int v0, v0

    sub-int/2addr v1, v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_1

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    :goto_1
    sub-int v0, v2, v7

    rsub-int v3, v9, 0x2710

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v12

    float-to-int v0, v0

    sub-int/2addr v2, v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLayoutDirection()I

    move-result v5

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v0, v3, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected onLevelChange(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->invalidateSelf()V

    const/4 v0, 0x1

    return v0
.end method
