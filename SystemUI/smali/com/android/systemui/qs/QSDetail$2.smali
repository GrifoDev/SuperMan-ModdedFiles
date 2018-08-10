.class Lcom/android/systemui/qs/QSDetail$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->-set0(Lcom/android/systemui/qs/QSDetail;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-wrap0(Lcom/android/systemui/qs/QSDetail;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get2(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get5(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get4(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QuickStatusBarHeader;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/QSDetail;->-set0(Lcom/android/systemui/qs/QSDetail;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-wrap0(Lcom/android/systemui/qs/QSDetail;)V

    return-void
.end method
