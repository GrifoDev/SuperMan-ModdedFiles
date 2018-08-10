.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-wrap1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCoverViewShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceEncrypted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKnoxNavbarHiddenChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarHidden()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCoverViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
