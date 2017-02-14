.class Lcom/samsung/android/settings/wifi/WifiReset$2;
.super Ljava/lang/Thread;
.source "WifiReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiReset;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiReset;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiReset;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset$2;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiReset$2;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->-get0(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "Device Reboot."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
