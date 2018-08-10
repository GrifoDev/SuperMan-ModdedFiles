.class Lcom/android/systemui/statusbar/NotificationMenuRow$1;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;->fadeInMenu(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

.field final synthetic val$fromLeft:Z

.field final synthetic val$notiThreshold:F

.field final synthetic val$transX:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;FZF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    iput p2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$transX:F

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$fromLeft:Z

    iput p4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$notiThreshold:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$transX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$fromLeft:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$transX:F

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$notiThreshold:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-get1(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-wrap4(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$fromLeft:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$notiThreshold:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
