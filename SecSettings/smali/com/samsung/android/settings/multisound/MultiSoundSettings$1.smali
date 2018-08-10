.class Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/MultiSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "enabled"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get4(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method
