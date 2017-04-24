.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$state:Lcom/samsung/android/cover/CoverState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->val$state:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/cover/SViewCoverLauncher;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "create SViewCoverLauncher for the first time!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v2, Lcom/android/systemui/cover/SViewCoverLauncher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f1303c7

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/cover/SViewCoverLauncher;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/cover/SViewCoverLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/cover/SViewCoverLauncher;->setShortcutAppOpenCallback(Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;)V

    :cond_0
    const-string/jumbo v0, "CoverUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverWindow() - mSViewCoverCovered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get42(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mAppCoverCovered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/cover/SViewCoverLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/cover/SViewCoverLauncher;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->val$state:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$70;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher;

    :cond_1
    return-void
.end method
