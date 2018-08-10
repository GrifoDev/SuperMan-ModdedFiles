.class Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$4;
.super Ljava/lang/Object;
.source "DataSavingChnPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->updateEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->setEnabled(Z)V

    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "updateEnabled(),false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$4;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->setEnabled(Z)V

    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "updateEnabled(),true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
