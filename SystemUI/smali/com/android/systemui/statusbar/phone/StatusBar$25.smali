.class Lcom/android/systemui/statusbar/phone/StatusBar$25;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


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
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBar$25_395146(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    check-cast p2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set17(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get34(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get34(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setCurrentSysuiVisibility(I)V

    return-void
.end method

.method public onDeviceProvisionedChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get10(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set9(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap38(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap43(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SETUP_WIZARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get34(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get37(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$8;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkNavigationBarType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->switchNavigationBar(Landroid/view/View;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;I)V

    :cond_0
    return-void
.end method
