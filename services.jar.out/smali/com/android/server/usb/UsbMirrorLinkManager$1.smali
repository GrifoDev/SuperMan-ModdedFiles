.class Lcom/android/server/usb/UsbMirrorLinkManager$1;
.super Landroid/os/UEventObserver;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USB UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NCM_DEVICE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usb: f/w ncm start uevent receive "

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "MirrorLink"

    const/16 v5, 0xc

    invoke-static {v3, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-set0(Lcom/android/server/usb/UsbMirrorLinkManager;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    aget v3, v1, v6

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get4(Lcom/android/server/usb/UsbMirrorLinkManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->-wrap4(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " MirrorLink cpu boost : SemDvfsManager mode is not supported "

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    const-string/jumbo v2, "RELEASE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get4(Lcom/android/server/usb/UsbMirrorLinkManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "usb: f/w ncm release uevent receive"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/usb/UsbMirrorLinkManager$1;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/usb/UsbMirrorLinkManager;->-wrap2(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    sget-object v4, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->RELEASE:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iput-object v4, v2, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-wrap1(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
