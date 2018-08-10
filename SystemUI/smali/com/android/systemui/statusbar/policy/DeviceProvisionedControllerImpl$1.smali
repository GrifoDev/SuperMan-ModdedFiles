.class Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "DeviceProvisionedControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V

    goto :goto_0
.end method
