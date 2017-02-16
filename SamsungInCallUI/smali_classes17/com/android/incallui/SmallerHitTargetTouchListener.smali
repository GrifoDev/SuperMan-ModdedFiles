.class public Lcom/android/incallui/SmallerHitTargetTouchListener;
.super Ljava/lang/Object;
.source "SmallerHitTargetTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final HIT_TARGET_EDGE_IGNORE_DP_X:I = 0x1e

.field private static final HIT_TARGET_EDGE_IGNORE_DP_Y:I = 0xa

.field private static final HIT_TARGET_MIN_SIZE_DP_X:I = 0x5a

.field private static final HIT_TARGET_MIN_SIZE_DP_Y:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "SmallerHitTargetTouchListener"


# instance fields
.field mDownEventHit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_4

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v9, v13

    .line 65
    .local v9, "touchX":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v10, v13

    .line 67
    .local v10, "touchY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 68
    .local v12, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 70
    .local v11, "viewHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v6, v13, Landroid/util/DisplayMetrics;->density:F

    .line 71
    .local v6, "pixelDensity":F
    const/high16 v13, 0x42b40000    # 90.0f

    mul-float/2addr v13, v6

    float-to-int v7, v13

    .line 72
    .local v7, "targetMinSizeX":I
    const/high16 v13, 0x41f00000    # 30.0f

    mul-float/2addr v13, v6

    float-to-int v8, v13

    .line 74
    .local v8, "targetMinSizeY":I
    const/high16 v13, 0x41f00000    # 30.0f

    mul-float/2addr v13, v6

    float-to-int v0, v13

    .line 75
    .local v0, "edgeIgnoreX":I
    const/high16 v13, 0x41200000    # 10.0f

    mul-float/2addr v13, v6

    float-to-int v1, v13

    .line 79
    .local v1, "edgeIgnoreY":I
    if-lt v12, v7, :cond_0

    if-ge v11, v8, :cond_1

    .line 83
    :cond_0
    const-string v13, "SmallerHitTargetTouchListener"

    const-string v14, "onTouch: view is too small for SmallerHitTargetTouchListener"

    invoke-static {v13, v14}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    .line 85
    const/4 v1, 0x0

    .line 88
    :cond_1
    move v4, v0

    .line 89
    .local v4, "minTouchX":I
    sub-int v2, v12, v0

    .line 90
    .local v2, "maxTouchX":I
    move v5, v1

    .line 91
    .local v5, "minTouchY":I
    sub-int v3, v11, v1

    .line 93
    .local v3, "maxTouchY":I
    if-lt v9, v4, :cond_2

    if-gt v9, v2, :cond_2

    if-lt v10, v5, :cond_2

    if-le v10, v3, :cond_3

    .line 97
    :cond_2
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/android/incallui/SmallerHitTargetTouchListener;->mDownEventHit:Z

    .line 98
    const/4 v13, 0x1

    .line 112
    .end local v0    # "edgeIgnoreX":I
    .end local v1    # "edgeIgnoreY":I
    .end local v2    # "maxTouchX":I
    .end local v3    # "maxTouchY":I
    .end local v4    # "minTouchX":I
    .end local v5    # "minTouchY":I
    .end local v6    # "pixelDensity":F
    .end local v7    # "targetMinSizeX":I
    .end local v8    # "targetMinSizeY":I
    .end local v9    # "touchX":I
    .end local v10    # "touchY":I
    .end local v11    # "viewHeight":I
    .end local v12    # "viewWidth":I
    :goto_0
    return v13

    .line 102
    .restart local v0    # "edgeIgnoreX":I
    .restart local v1    # "edgeIgnoreY":I
    .restart local v2    # "maxTouchX":I
    .restart local v3    # "maxTouchY":I
    .restart local v4    # "minTouchX":I
    .restart local v5    # "minTouchY":I
    .restart local v6    # "pixelDensity":F
    .restart local v7    # "targetMinSizeX":I
    .restart local v8    # "targetMinSizeY":I
    .restart local v9    # "touchX":I
    .restart local v10    # "touchY":I
    .restart local v11    # "viewHeight":I
    .restart local v12    # "viewWidth":I
    :cond_3
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/incallui/SmallerHitTargetTouchListener;->mDownEventHit:Z

    .line 103
    const/4 v13, 0x0

    goto :goto_0

    .line 112
    .end local v0    # "edgeIgnoreX":I
    .end local v1    # "edgeIgnoreY":I
    .end local v2    # "maxTouchX":I
    .end local v3    # "maxTouchY":I
    .end local v4    # "minTouchX":I
    .end local v5    # "minTouchY":I
    .end local v6    # "pixelDensity":F
    .end local v7    # "targetMinSizeX":I
    .end local v8    # "targetMinSizeY":I
    .end local v9    # "touchX":I
    .end local v10    # "touchY":I
    .end local v11    # "viewHeight":I
    .end local v12    # "viewWidth":I
    :cond_4
    iget-boolean v13, p0, Lcom/android/incallui/SmallerHitTargetTouchListener;->mDownEventHit:Z

    if-nez v13, :cond_5

    const/4 v13, 0x1

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    goto :goto_0
.end method
