.class public Lcom/android/server/wm/HorizontalModeController;
.super Ljava/lang/Object;
.source "HorizontalModeController.java"

# interfaces
.implements Lcom/android/server/wm/HorizontalModeService;


# static fields
.field public static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "HorizontalModeController"


# instance fields
.field private mConfigEnabled:Z

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mEnabled:Z

.field private mHorizontalModeRotation:I

.field private mHorizontalModeScale:F

.field private mHorizontalModeTransX:I

.field private mHorizontalModeTransY:I

.field private mHorizontalModeTransformation:Landroid/view/animation/Transformation;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/HorizontalModeController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransX:I

    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransY:I

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeRotation:I

    return-void
.end method

.method private getOrientationFromAppToken(Lcom/android/server/wm/AppWindowToken;)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private scaleUp(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method


# virtual methods
.method public adjustInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->getScale()F

    move-result v1

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v0, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    return-void
.end method

.method public adjustRectForHorizontalWindow(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p2}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p3}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p4}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p5}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p6}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    invoke-direct {p0, p7}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    if-eqz p8, :cond_0

    invoke-direct {p0, p8}, Lcom/android/server/wm/HorizontalModeController;->scaleUp(Landroid/graphics/Rect;)V

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/HorizontalModeController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v1, "HorizontalModeController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changed frame : pf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " df="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " of="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " cf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " vf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " dcf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " sf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " osf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p8, :cond_2

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Horizontal Mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mConfigEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mHorizontalModeTransformation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mHorizontalModeRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBottomOffset()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHorizontalModeRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeRotation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    return v0
.end method

.method public getTransX()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransX:I

    int-to-float v0, v0

    return v0
.end method

.method public getTransY()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransY:I

    int-to-float v0, v0

    return v0
.end method

.method public getTransformation(Lcom/android/server/wm/AppWindowToken;)Landroid/view/animation/Transformation;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/HorizontalModeController;->isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->isScaleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    iget v2, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_1
    iget v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransformation:Landroid/view/animation/Transformation;

    return-object v1
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-le v0, v2, :cond_0

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeRotation:I

    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/HorizontalModeController;->initTransformation(II)V

    iput-boolean v4, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    return-void
.end method

.method public initTransformation(II)V
    .locals 5

    const/4 v4, 0x0

    if-le p2, p1, :cond_0

    move v0, p2

    move p2, p1

    move p1, v0

    :cond_0
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeScale:F

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    int-to-float v3, p1

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransX:I

    iput v4, p0, Lcom/android/server/wm/HorizontalModeController;->mHorizontalModeTransY:I

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public isEnabled()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/HorizontalModeController;->mConfigEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "debug.horizontalmode.fixed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isHorizontalModeWindow(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-nez v2, :cond_0

    return v5

    :cond_0
    iget-object v3, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_1

    iget v3, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/HorizontalModeController;->isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v3

    return v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public isHorizontalModeWindow(Landroid/view/IApplicationToken;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/HorizontalModeController;->isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    return v1
.end method

.method public isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/HorizontalModeController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v1, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/HorizontalModeController;->getOrientationFromAppToken(Lcom/android/server/wm/AppWindowToken;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/HorizontalModeController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public isScaleMode()Z
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "debug.sys.horizontalmode.scale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/HorizontalModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "HorizontalModeController"

    if-eqz p1, :cond_1

    const-string/jumbo v0, "Enabled "

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/HorizontalModeController;->mEnabled:Z

    return-void

    :cond_1
    const-string/jumbo v0, "Disabled "

    goto :goto_0
.end method
