.class Lcom/android/systemui/statusbar/policy/WifiSignalController$4;
.super Ljava/lang/Object;
.source "WifiSignalController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$4;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "covert_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "covert_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$4;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$4;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-get2(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getSecureWifiState()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-set1(Lcom/android/systemui/statusbar/policy/WifiSignalController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$4;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
