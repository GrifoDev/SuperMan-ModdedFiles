.class Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingTile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "mode"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->-get2(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->checkScreenState(I)V

    :cond_2
    return-void
.end method
