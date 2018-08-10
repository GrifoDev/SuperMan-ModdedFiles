.class Lcom/android/systemui/lockstar/PluginLockStarManager$5;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;


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

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$5;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndicationTextView()Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$5;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get0(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0078

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLockIconView(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$5;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get0(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "biometric"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$5;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get0(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0060

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$5;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get6(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBiometricLockIconCallback(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setIndicationTextView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$5;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get3(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationTextForLockStar(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    return-void
.end method

.method public setLockIconView(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$5;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get3(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    check-cast p2, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setLockSecureIconForLockStar(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "biometric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$5;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->-get3(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    check-cast p2, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setLockIconForLockStar(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    goto :goto_0
.end method
