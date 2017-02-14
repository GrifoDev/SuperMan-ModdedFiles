.class Lcom/android/settings/WifiCallingSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WifiCallingSettings$2;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/WifiCallingSettings$2;->setResultCode(I)V

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings$2;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-static {v1}, Lcom/android/settings/WifiCallingSettings;->-get0(Lcom/android/settings/WifiCallingSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings$2;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-static {v1, p2}, Lcom/android/settings/WifiCallingSettings;->-wrap0(Lcom/android/settings/WifiCallingSettings;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
