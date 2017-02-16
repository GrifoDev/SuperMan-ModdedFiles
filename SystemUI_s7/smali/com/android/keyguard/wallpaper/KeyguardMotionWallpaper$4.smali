.class Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;
.super Ljava/lang/Object;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

.field final synthetic val$curAngularSum:F


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    iput p2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    const v6, 0x3d4ccccd    # 0.05f

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get11(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-set1(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;F)F

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v2

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get7(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get7(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-set1(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;F)F

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v2

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-virtual {v2}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->invalidate()V

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-set7(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;F)F

    :cond_4
    return-void
.end method
