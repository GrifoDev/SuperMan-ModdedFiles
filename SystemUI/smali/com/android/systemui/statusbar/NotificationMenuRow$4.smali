.class Lcom/android/systemui/statusbar/NotificationMenuRow$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationMenuRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;->fadeOutMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$4;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$4;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-wrap4(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$4;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-set0(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$4;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$4;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-get0(Lcom/android/systemui/statusbar/NotificationMenuRow;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-set1(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$4;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-set0(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z

    return-void
.end method
