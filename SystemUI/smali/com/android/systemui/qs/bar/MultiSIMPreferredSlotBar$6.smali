.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "MultiSIMPreferredSlotBar"

    const-string/jumbo v3, "onChanged() - emergency_mode : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap8(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    :cond_1
    return-void

    :cond_2
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set1(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    const-string/jumbo v2, "MultiSIMPreferredSlotBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChanged() - airplane_mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v4}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get3(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get19(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    invoke-static {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_0
.end method
