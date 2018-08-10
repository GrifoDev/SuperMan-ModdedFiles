.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "OnSwitchChangeListener, context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_5

    const-string/jumbo v0, "on"

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    const-string/jumbo v4, "BLEM_100"

    const-string/jumbo v5, "BLEM_0101"

    invoke-static {v3, v4, v5, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-wrap0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 p2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "Not Installed BeaconManager"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_6

    :goto_1
    invoke-static {v3, v2}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/nearbyscan/Util;->settingslogging(Landroid/content/Context;)Z

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v0, "off"

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method
