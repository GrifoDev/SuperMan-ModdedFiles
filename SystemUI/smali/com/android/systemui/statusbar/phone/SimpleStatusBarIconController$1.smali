.class Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 3

    const-string/jumbo v0, "simple_status_bar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimpleStatusBarIconController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->-get0(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isSimpleStatusBarEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->-get3(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->-set0(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->-get2(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->-get1(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->-get2(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V

    :cond_0
    return-void
.end method
