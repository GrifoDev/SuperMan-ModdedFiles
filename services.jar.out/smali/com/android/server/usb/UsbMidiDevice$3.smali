.class Lcom/android/server/usb/UsbMidiDevice$3;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field final synthetic val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

.field final synthetic val$outputStreamF:Ljava/io/FileOutputStream;

.field final synthetic val$portF:I


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$3;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    iput-object p4, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iput p5, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v3}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v2

    check-cast v2, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    const-string/jumbo v3, "UsbMidiDevice"

    const-string/jumbo v4, "output thread exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iget-object v4, v2, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v5, v2, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v3, v2}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "UsbMidiDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "write failed for port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/usb/UsbMidiDevice$3;->val$portF:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
