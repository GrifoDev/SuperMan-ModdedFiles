.class public Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;
    }
.end annotation


# static fields
.field public static final EDGE_LEFT_TOP:I = 0x5

.field public static final EDGE_NONE:I = 0x0

.field public static final EDGE_RIGHT_TOP:I = 0x9

.field private static final MAX_EFFECTIVE_DEGREES:I = 0x46

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiWindowEdgeDetector"

.field private static final WIDTH_SCALE_FOR_LANDSCAPE_CORNER_R:F = 1.25f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private mEdgeFlgas:I

.field private mHeight:I

.field private mIsDetectorOfMultiWindowPointer:Z

.field private mIsScreenCornerR:Z

.field private mMaxDegrees:I

.field private mScreenHeight:I

.field private mScreenOrientation:I

.field private mScreenWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsScreenCornerR:Z

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsDetectorOfMultiWindowPointer:Z

    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_CORNER_R"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsScreenCornerR:Z

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->loadResources()V

    iput-boolean p2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsDetectorOfMultiWindowPointer:Z

    return-void
.end method

.method private ensureScreenInfo()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v0, :cond_1

    const/4 v1, 0x2

    :goto_0
    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    if-eq v3, v1, :cond_0

    const-string/jumbo v3, "MultiWindowEdgeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ensureScreenInfo: ScreenInfo is wrong, mScreenOr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", currentOr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateScreenInfo()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNotSupportEdge(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadResources()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsScreenCornerR:Z

    if-eqz v0, :cond_1

    const v0, 0x105014e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateScreenInfo()V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateFromSystemProperties()V

    :cond_0
    return-void

    :cond_1
    const v0, 0x105014d

    goto :goto_0
.end method

.method private updateFromSystemProperties()V
    .locals 8

    const/4 v6, -0x1

    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-nez v5, :cond_0

    return-void

    :cond_0
    const-string/jumbo v5, "persist.dev.freeform.gesture.w"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "persist.dev.freeform.gesture.h"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "persist.dev.freeform.gesture.r"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "persist.dev.freeform.gesture.dr"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v0, 0x0

    if-ltz v4, :cond_1

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    if-eq v5, v4, :cond_1

    iput v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    const/4 v0, 0x1

    :cond_1
    if-ltz v3, :cond_2

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    if-eq v5, v3, :cond_2

    iput v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    const/4 v0, 0x1

    :cond_2
    if-ltz v1, :cond_3

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    if-eq v5, v1, :cond_3

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    const/4 v0, 0x1

    :cond_3
    if-ltz v2, :cond_4

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-eq v5, v2, :cond_4

    iput v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    const-string/jumbo v5, "MultiWindowEdgeDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFromSystemProperties: mWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mCornerRadius="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mMaxDegrees="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private updateScreenInfo()V
    .locals 5

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "MultiWindowEdgeDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "display is null, mContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenHeight:I

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenHeight:I

    if-le v2, v4, :cond_3

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsScreenCornerR:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    :cond_1
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "MultiWindowEdgeDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateScreenInfo: mScreenWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mScreenHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mScreenOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkEdgeFlags(Landroid/view/MotionEvent;)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/4 v0, 0x0

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    const/4 v0, 0x5

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsDetectorOfMultiWindowPointer:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "MultiWindowEdgeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEdgeFlags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->edgeFlagToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", screenWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    const/16 v0, 0x9

    goto :goto_0
.end method

.method public getEdgeFlgas()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    return v0
.end method

.method public isEdge()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEffectiveAngle(II)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v0, 0x7fffffff

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const-string/jumbo v4, "MultiWindowEdgeDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEffectiveAngle: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-gt v0, v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", degrees="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", mMaxDegrees="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    if-gt v0, v1, :cond_1

    :goto_2
    return v2

    :sswitch_0
    int-to-double v4, p2

    int-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_0

    :sswitch_1
    int-to-double v4, p2

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    sub-int/2addr v1, p1

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->loadResources()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->ensureScreenInfo()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->checkEdgeFlags(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isNotSupportEdge(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public readyToFreeform(II)Z
    .locals 4

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    mul-int v1, v2, v3

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :sswitch_0
    mul-int v2, p1, p1

    mul-int v3, p2, p2

    add-int v0, v2, v3

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    sub-int/2addr v2, p1

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    sub-int/2addr v3, p1

    mul-int/2addr v2, v3

    mul-int v3, p2, p2

    add-int v0, v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "MultiWindowEdgeDetector{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Start("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ") Screen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ") Or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mScreenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " Radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mCornerRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " Degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mMaxDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " EdgeFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mEdgeFlgas:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " PointerObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->mIsDetectorOfMultiWindowPointer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
