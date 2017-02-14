.class public Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagnifierPadSize"
.end annotation


# instance fields
.field public isTablet:Z

.field x:[I

.field y:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array {v4, v5, v6, v7, v8}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array {v4, v5, v6, v7, v8}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v4, "tablet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->isTablet:Z

    iget-boolean v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->isTablet:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    int-to-double v6, v3

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    int-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x1

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    int-to-double v6, v3

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x2

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    int-to-double v6, v3

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x3

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x4

    aput v3, v4, v5

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    int-to-double v6, v1

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x1

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    int-to-double v6, v1

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x2

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    int-to-double v6, v1

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x3

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x4

    aput v5, v4, v6

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    int-to-double v6, v3

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    int-to-double v6, v3

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x1

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    const/4 v5, 0x2

    aput v3, v4, v5

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    int-to-double v6, v1

    const-wide v8, 0x3fd3d70a3d70a3d7L    # 0.31

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x1

    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    int-to-double v6, v1

    const-wide v8, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x2

    aput v5, v4, v6

    goto :goto_1
.end method
