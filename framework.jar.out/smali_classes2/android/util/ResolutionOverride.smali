.class public Landroid/util/ResolutionOverride;
.super Ljava/lang/Object;
.source "ResolutionOverride.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final RES_OVERRIDE:Ljava/lang/String; = "persist.debug.app_res_override"

.field private static final TAG:Ljava/lang/String; = "ResolutionOverride"


# instance fields
.field private mIsEnabled:Z

.field private mOverrideXres:I

.field private mOverrideYres:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 11

    const/16 v10, 0x78

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->canOverrideRes()I

    move-result v6

    if-ne v6, v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v6, "persist.debug.app_res_override"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    if-nez v4, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v8, :cond_3

    if-ne v2, v9, :cond_6

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ne v6, v3, :cond_4

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    if-ne v2, v9, :cond_5

    iget v5, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    iget v6, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    iput v5, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    :cond_5
    iget v6, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    if-lez v6, :cond_6

    iget v6, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    if-lez v6, :cond_6

    iput-boolean v8, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    :cond_6
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "ResolutionOverride"

    const-string/jumbo v7, "Error in extracting the overriding xres and yres"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public handleResize(Landroid/view/SurfaceView;)V
    .locals 4

    iget-boolean v0, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/ResolutionOverride$1;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$1;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/util/ResolutionOverride$2;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$2;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public handleTouch(Landroid/view/SurfaceView;Landroid/view/MotionEvent;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    iget-boolean v3, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    iget v3, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setFixedSize(Landroid/view/SurfaceView;)V
    .locals 3

    iget-boolean v0, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    iget v2, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method
