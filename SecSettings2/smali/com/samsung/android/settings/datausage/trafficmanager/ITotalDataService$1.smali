.class Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;
.super Lcom/samsung/android/trafficmanager/ITotalData$Stub;
.source "ITotalDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;

    invoke-direct {p0}, Lcom/samsung/android/trafficmanager/ITotalData$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultSubscriptionId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "ITotalDataService"

    const-string/jumbo v1, "getDefaultSubscriptionId in Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->-wrap0(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;)I

    move-result v0

    return v0
.end method

.method public getTotalUsedBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "ITotalDataService"

    const-string/jumbo v1, "getTotalUsedBytes in Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->-wrap1(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;)J

    move-result-wide v0

    return-wide v0
.end method
