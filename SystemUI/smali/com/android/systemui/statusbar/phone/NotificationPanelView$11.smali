.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    check-cast p2, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->setIconContainer(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/swipe/SwipeAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/swipe/SwipeAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->setIconSlotView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/swipe/SwipeAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->setSwipeAnimator(Lcom/android/systemui/swipe/SwipeAnimator;)V

    :cond_0
    return-void
.end method
