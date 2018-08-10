.class Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;
.super Ljava/lang/Object;
.source "SecSummaryLayoutCHN.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v1, "SummaryPreferenceCHN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {p2}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IDataSavingService;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-get3(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/datasaving/IDataSavingService;->setOnSavingStateChangeListener(Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v1}, Lcom/samsung/android/datasaving/IDataSavingService;->bindServices()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    sget-object v2, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "exception happen when Called mDataSavingService bind opera saving service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "SummaryPreferenceCHN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceDisconnected name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-get3(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/datasaving/IDataSavingService;->removeOnSavingStateChangeListener(Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iput-object v4, v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "exception happen when Called mDataSavingService removeOnSavingStateChangeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
