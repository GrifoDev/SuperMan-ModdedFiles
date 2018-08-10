.class Lcom/samsung/android/settings/qstile/PowerSavingTile$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/qstile/PowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$1;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "mode"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$1;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-static {v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->-get2(Lcom/samsung/android/settings/qstile/PowerSavingTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v3

    if-ne v1, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$1;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-virtual {v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b041a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$1;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-virtual {v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b041b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int v4, v2, v1

    invoke-static {p1, v3, v4}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$1;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->checkScreenState(I)V

    :cond_2
    return-void
.end method
