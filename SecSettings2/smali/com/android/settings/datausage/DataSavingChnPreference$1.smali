.class Lcom/android/settings/datausage/DataSavingChnPreference$1;
.super Ljava/lang/Object;
.source "DataSavingChnPreference.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$1;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v1, "DataSavingChnPreference"

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

    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$1;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {p2}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IDataSavingService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$1;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v1, v1, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v1}, Lcom/samsung/android/datasaving/IDataSavingService;->bindServices()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$1;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->-get0(Lcom/android/settings/datausage/DataSavingChnPreference;)Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$1;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->-get0(Lcom/android/settings/datausage/DataSavingChnPreference;)Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDataSavingLayout()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "exception happen when Called mDataSavingService bind opera saving service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "DataSavingChnPreference"

    const-string/jumbo v2, "mSecSummaryLayoutCHN is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v0, "DataSavingChnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$1;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    return-void
.end method
