.class Lcom/android/systemui/statusbar/phone/StatusBar$80;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/cover/SViewCoverLauncher;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CoverUI"

    const-string/jumbo v2, "create SViewCoverLauncher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v2, Lcom/android/systemui/cover/SViewCoverLauncher;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/cover/SViewCoverLauncher;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set3(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/cover/SViewCoverLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get6(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/cover/SViewCoverLauncher;->setShortcutAppOpenCallback(Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;)V

    :cond_0
    const-string/jumbo v1, "CoverUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CoverLauncher.updateCoverState: isCoverClosed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get21(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isCoverAppCovered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get20(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/cover/SViewCoverLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set3(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher;

    :cond_1
    return-void
.end method
