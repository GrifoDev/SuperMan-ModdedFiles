.class final Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;
.super Ljava/lang/Object;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceMonitorCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public onNoService()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/volume/VolumeUI;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VolumeUI"

    const-string/jumbo v1, "onNoService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeUI;->-wrap2(Lcom/android/systemui/volume/VolumeUI;Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get3(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->hide()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get4(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->isPackageAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get4(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->setComponent(Landroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method public onServiceStartAttempt()J
    .locals 2

    invoke-static {}, Lcom/android/systemui/volume/VolumeUI;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VolumeUI"

    const-string/jumbo v1, "onServiceStartAttempt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get4(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeUI;->-get4(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->setComponent(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeUI;->-wrap2(Lcom/android/systemui/volume/VolumeUI;Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-wrap0(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get3(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->show()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
