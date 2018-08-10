.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateScrimControllerKeyguardFadingOut(JJLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarKeyguardViewManager$9_34604()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get5(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get1(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get6(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardFadingAway(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get2(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->finishKeyguardFadingAway()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    const-string/jumbo v0, "Fading out"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method
