.class Lcom/samsung/android/settings/guide/BtSettingsGuider$1;
.super Landroid/content/BroadcastReceiver;
.source "BtSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/BtSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;->this$0:Lcom/samsung/android/settings/guide/BtSettingsGuider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;->this$0:Lcom/samsung/android/settings/guide/BtSettingsGuider;

    invoke-static {v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->fromAction(Ljava/lang/String;)Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-wrap0(Lcom/samsung/android/settings/guide/BtSettingsGuider;Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method
