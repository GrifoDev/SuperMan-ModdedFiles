.class public Lcom/android/incallui/SmallerHitTargetTouchListener;
.super Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/high16 v10, 0x41f00000    # 30.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v4, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float/2addr v3, v2

    float-to-int v8, v3

    mul-float v3, v10, v2

    float-to-int v9, v3

    mul-float v3, v10, v2

    float-to-int v3, v3

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    if-lt v6, v8, :cond_0

    if-ge v7, v9, :cond_1

    :cond_0
    const-string v2, "SmallerHitTargetTouchListener"

    const-string v3, "onTouch: view is too small for SmallerHitTargetTouchListener"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    move v3, v1

    :cond_1
    sub-int/2addr v6, v3

    sub-int/2addr v7, v2

    if-lt v4, v3, :cond_2

    if-gt v4, v6, :cond_2

    if-lt v5, v2, :cond_2

    if-le v5, v7, :cond_4

    :cond_2
    iput-boolean v1, p0, Lcom/android/incallui/SmallerHitTargetTouchListener;->mDownEventHit:Z

    :cond_3
    :goto_0
    return v0

    :cond_4
    iput-boolean v0, p0, Lcom/android/incallui/SmallerHitTargetTouchListener;->mDownEventHit:Z

    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/android/incallui/SmallerHitTargetTouchListener;->mDownEventHit:Z

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0
.end method
