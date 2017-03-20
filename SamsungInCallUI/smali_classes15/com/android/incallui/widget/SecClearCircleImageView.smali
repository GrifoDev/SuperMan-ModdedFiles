.class public Lcom/android/incallui/widget/SecClearCircleImageView;
.super Landroid/widget/ImageView;
.source "SecClearCircleImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecClearCircleImageView"


# instance fields
.field private mInnerCircle:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mInnerCircle:Landroid/graphics/Paint;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mRadius:F

    .line 25
    invoke-direct {p0}, Lcom/android/incallui/widget/SecClearCircleImageView;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mInnerCircle:Landroid/graphics/Paint;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mRadius:F

    .line 30
    invoke-direct {p0}, Lcom/android/incallui/widget/SecClearCircleImageView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mInnerCircle:Landroid/graphics/Paint;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mRadius:F

    .line 35
    invoke-direct {p0}, Lcom/android/incallui/widget/SecClearCircleImageView;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mInnerCircle:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mInnerCircle:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mInnerCircle:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    iget-object v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mInnerCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mRadius:F

    .line 47
    return-void
.end method


# virtual methods
.method public clearInnerCircle(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    .line 50
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 51
    :cond_0
    const-string v0, "SecClearCircleImageView"

    const-string v1, "clearInnerCircle: radius value is wrong"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "SecClearCircleImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearInnerCircle: radius - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput p1, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mRadius:F

    .line 56
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecClearCircleImageView;->invalidate()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 61
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget-object v2, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mInnerCircle:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 64
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 65
    .local v1, "cy":F
    const-string v2, "SecClearCircleImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDraw: cx("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") cy("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") radius("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mRadius:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget v2, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mRadius:F

    iget-object v3, p0, Lcom/android/incallui/widget/SecClearCircleImageView;->mInnerCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    :cond_0
    return-void
.end method
