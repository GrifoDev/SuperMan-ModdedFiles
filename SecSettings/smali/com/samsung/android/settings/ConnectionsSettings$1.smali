.class Lcom/samsung/android/settings/ConnectionsSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ConnectionsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wificalling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-wrap1(Lcom/samsung/android/settings/ConnectionsSettings;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$1;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-wrap2(Lcom/samsung/android/settings/ConnectionsSettings;)V

    :cond_1
    return-void
.end method
