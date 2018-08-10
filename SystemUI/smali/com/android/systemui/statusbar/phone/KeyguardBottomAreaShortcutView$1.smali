.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaShortcutView.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    const/4 v3, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "tap_to_icon"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->-wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->-get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v2

    :goto_1
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->-set3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->-get7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->onDensityOrFontScaleChanged(Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "easy_mode_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->onDensityOrFontScaleChanged(Z)V

    goto :goto_0
.end method
