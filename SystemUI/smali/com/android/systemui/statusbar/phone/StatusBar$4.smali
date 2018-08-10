.class Lcom/android/systemui/statusbar/phone/StatusBar$4;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_2

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set12(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get24(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get27(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePowerSaver(ZZ)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get27(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap6(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
