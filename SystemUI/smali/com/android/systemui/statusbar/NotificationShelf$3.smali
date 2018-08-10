.class Lcom/android/systemui/statusbar/NotificationShelf$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationShelf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShelf;->startButtonsAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$3;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShelf$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$3;->val$show:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$3;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->-get1(Lcom/android/systemui/statusbar/NotificationShelf;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$3;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->-get1(Lcom/android/systemui/statusbar/NotificationShelf;)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$3;->val$show:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$3;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->-get1(Lcom/android/systemui/statusbar/NotificationShelf;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
