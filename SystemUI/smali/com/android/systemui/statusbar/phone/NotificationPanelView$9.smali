.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_NotificationPanelView$9_168547(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldQsHeight:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldQsHeight:I

    :cond_0
    return-void
.end method

.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setKeyguardShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get13(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setQsContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    return-void
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    :cond_0
    return-void
.end method
