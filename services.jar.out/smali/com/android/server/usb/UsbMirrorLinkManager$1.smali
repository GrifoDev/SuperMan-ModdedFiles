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
    .locals 6

    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "explicit USB UEVENT: "

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

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2, v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->-wrap0(Lcom/android/server/usb/UsbMirrorLinkManager;Ljava/lang/String;)V

    const-string/jumbo v2, "START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

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

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " MirrorLink cpu boost : SemDvfsManager mode is not supported "

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "RELEASE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usb: f/w ncm release uevent receive"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
