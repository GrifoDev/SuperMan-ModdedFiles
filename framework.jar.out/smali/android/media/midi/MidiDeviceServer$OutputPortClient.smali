.class Landroid/media/midi/MidiDeviceServer$OutputPortClient;
.super Landroid/media/midi/MidiDeviceServer$PortClient;
.source "MidiDeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputPortClient"
.end annotation


# instance fields
.field private final mInputPort:Landroid/media/midi/MidiInputPort;

.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    .locals 0

    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0, p1, p2}, Landroid/media/midi/MidiDeviceServer$PortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V

    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    return-void
.end method


# virtual methods
.method close()V
    .locals 5

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v3}, Landroid/media/midi/MidiInputPort;->getPortNumber()I

    move-result v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-get9(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v3

    aget-object v0, v3, v2

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v3

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v3, v4}, Landroid/media/midi/MidiSender;->disconnect(Landroid/media/midi/MidiReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v1

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aput v1, v3, v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-wrap1(Landroid/media/midi/MidiDeviceServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-get7(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method getInputPort()Landroid/media/midi/MidiInputPort;
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    return-object v0
.end method
