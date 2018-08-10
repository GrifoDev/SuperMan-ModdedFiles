.class Lcom/android/systemui/lockstar/PluginLockStarManager$6;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;


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

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get1(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get2(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    :cond_0
    return-void
.end method

.method public isFlashlightEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get1(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public removeListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get1(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get2(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method public setFlashlight()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get1(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get1(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    return-void
.end method

.method public setFlashlightListener(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$6;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-set0(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    return-void
.end method
