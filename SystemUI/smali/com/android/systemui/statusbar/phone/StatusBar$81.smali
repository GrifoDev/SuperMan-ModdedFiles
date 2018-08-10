.class Lcom/android/systemui/statusbar/phone/StatusBar$81;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->updateCoverWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string/jumbo v3, "CoverUI"

    const-string/jumbo v6, "updateCoverWindow: START"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap3(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    move-result v0

    const-string/jumbo v3, "CoverUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCoverWindow: keyguard dismissed by cover : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    if-ne v3, v5, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v1, 0x8

    :goto_0
    const-string/jumbo v3, "CoverUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCoverWindow: settings NavigationBar visibility to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get21(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap34(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get21(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get21(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap4(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0a02d7

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0a02d8

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap46(Lcom/android/systemui/statusbar/phone/StatusBar;I)V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get13(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get14(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v6

    invoke-virtual {v3, v5, v6, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->disable(IIZ)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(IZ)V

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    :cond_6
    :goto_3
    const-string/jumbo v3, "CoverUI"

    const-string/jumbo v4, "updateCoverWindow: END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get21(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v3, v8, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v3, v9, :cond_a

    :cond_9
    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    move v3, v5

    goto/16 :goto_2

    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap4(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a02d7

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a02d8

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap46(Lcom/android/systemui/statusbar/phone/StatusBar;I)V

    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get13(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get14(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->disable(IIZ)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v4

    invoke-virtual {v3, v9, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(IZ)V

    goto/16 :goto_3
.end method
