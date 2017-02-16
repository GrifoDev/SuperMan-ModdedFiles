.class Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;
.super Ljava/lang/Object;
.source "NotificationSettingsIconRow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->fadeInSettings(ZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

.field final synthetic val$fromLeft:Z

.field final synthetic val$notiThreshold:F

.field final synthetic val$transX:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;FZF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    iput p2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->val$transX:F

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->val$fromLeft:Z

    iput p4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->val$notiThreshold:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->val$transX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->val$fromLeft:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->val$transX:F

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->val$notiThreshold:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->-get1(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->val$fromLeft:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->val$notiThreshold:F

    cmpg-float v3, v0, v3

    if-lez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;->this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setGearAlpha(F)V

    goto :goto_1
.end method
