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
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    const/16 v10, 0x78

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v6, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    .line 50
    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    .line 51
    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->canOverrideRes()I

    move-result v6

    if-ne v6, v8, :cond_1

    const/4 v0, 0x1

    .line 56
    .local v0, "enable":Z
    :goto_0
    const-string/jumbo v6, "persist.debug.app_res_override"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "resStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v4, :cond_2

    .line 60
    :cond_0
    return-void

    .line 55
    .end local v0    # "enable":Z
    .end local v4    # "resStr":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 58
    .restart local v4    # "resStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    .line 65
    .local v2, "orientation":I
    if-eq v2, v8, :cond_3

    .line 66
    if-ne v2, v9, :cond_6

    .line 67
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 69
    .local v3, "pos":I
    if-lez v3, :cond_4

    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ne v6, v3, :cond_4

    .line 71
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    .line 72
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_4
    :goto_1
    if-ne v2, v9, :cond_5

    .line 79
    iget v5, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    .line 80
    .local v5, "tmp":I
    iget v6, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    iput v6, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    .line 81
    iput v5, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    .line 84
    .end local v5    # "tmp":I
    :cond_5
    iget v6, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    if-lez v6, :cond_6

    iget v6, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    if-lez v6, :cond_6

    .line 85
    iput-boolean v8, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    .line 54
    .end local v3    # "pos":I
    :cond_6
    return-void

    .line 73
    .restart local v3    # "pos":I
    :catch_0
    move-exception v1

    .line 74
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "ResolutionOverride"

    const-string/jumbo v7, "Error in extracting the overriding xres and yres"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public handleResize(Landroid/view/SurfaceView;)V
    .locals 4
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 129
    :cond_0
    new-instance v0, Landroid/util/ResolutionOverride$1;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$1;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 136
    new-instance v0, Landroid/util/ResolutionOverride$2;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$2;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    .line 141
    const-wide/16 v2, 0x64

    .line 136
    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method

.method public handleTouch(Landroid/view/SurfaceView;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "view"    # Landroid/view/SurfaceView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 104
    iget-boolean v3, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v3, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 110
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 111
    .local v1, "xscale":F
    iget v3, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 114
    .local v2, "yscale":F
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 115
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 103
    return-void
.end method

.method public setFixedSize(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/util/ResolutionOverride;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Landroid/util/ResolutionOverride;->mOverrideXres:I

    iget v2, p0, Landroid/util/ResolutionOverride;->mOverrideYres:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 94
    return-void
.end method
