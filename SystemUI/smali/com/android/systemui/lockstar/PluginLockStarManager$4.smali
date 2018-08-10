.class Lcom/android/systemui/lockstar/PluginLockStarManager$4;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/PluginLockStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDAAffordance()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get6(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelDAAffordance()V

    return-void
.end method

.method public createAppShortcutDataFromPackageName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ShortcutManager;->createAppShortcutDataFromPackageName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;

    move-result-object v0

    return-object v0
.end method

.method public getIntent(Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ShortcutManager;->getIntent(Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public inflatePreview(Landroid/content/Intent;)Landroid/view/View;
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get0(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get0(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationToSideEnded()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get6(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAnimationToSideEnded()V

    return-void
.end method

.method public onAnimationToSideStarted()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get6(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get0(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAnimationToSideStarted(ZZ)V

    return-void
.end method

.method public onIconClicked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get6(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onIconClicked(Z)Z

    return-void
.end method

.method public onSwipingAborted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get6(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onSwipingAborted()V

    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get6(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onSwipingStarted(Z)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 2

    const-string/jumbo v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$4;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get4(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_template"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method
