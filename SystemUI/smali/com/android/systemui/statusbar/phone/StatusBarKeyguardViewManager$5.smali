.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBiometricUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setBiometricUnlocked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get5(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get5(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get6(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get3(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get6(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardFadingAway(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get4(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v1

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateKeyguardFadingOut(JJLjava/lang/Runnable;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get6(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardFadingAway(Z)V

    goto :goto_0
.end method
