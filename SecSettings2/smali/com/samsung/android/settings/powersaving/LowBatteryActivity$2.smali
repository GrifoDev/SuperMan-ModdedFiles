.class Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "LowBatteryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerBatteryStatusReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v9, 0x64

    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "level"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "scale"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "status"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "online"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v7, v4}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->-set2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    if-ne v3, v5, :cond_4

    :goto_1
    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->-set3(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z

    if-ltz v0, :cond_0

    if-lez v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    mul-int/lit8 v5, v0, 0x64

    div-int/2addr v5, v2

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->-set0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    const-string/jumbo v5, "plugged"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->-set1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I

    const-string/jumbo v4, "hv_charger"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->-set1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I

    :cond_1
    if-ne v1, v9, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-static {v4, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->-set1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->-wrap1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V

    return-void

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1
.end method
