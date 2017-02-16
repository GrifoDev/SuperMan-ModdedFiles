.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "current_sec_appicon_theme_package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get22(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/keyguard/util/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    :cond_0
    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get7(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set15(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set16(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set6(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    :cond_0
    return-void
.end method

.method public onEmergencyStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get22(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/keyguard/util/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    return-void
.end method
