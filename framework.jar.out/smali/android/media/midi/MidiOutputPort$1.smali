.class Landroid/media/midi/MidiOutputPort$1;
.super Ljava/lang/Thread;
.source "MidiOutputPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiOutputPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiOutputPort;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiOutputPort;)V
    .locals 0

    iput-object p1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v0, 0x400

    new-array v1, v0, [B

    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-gez v6, :cond_0

    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getPacketType([BI)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    const-string/jumbo v0, "MidiOutputPort"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown packet type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "MidiOutputPort"

    const-string/jumbo v9, "read failed"

    invoke-static {v0, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :pswitch_0
    :try_start_3
    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getDataOffset([BI)I

    move-result v2

    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getDataSize([BI)I

    move-result v3

    invoke-static {v1, v6}, Landroid/media/midi/MidiPortImpl;->getPacketTimestamp([BI)J

    move-result-wide v4

    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get0(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/midi/MidiDispatcher;->send([BIIJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v9, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v9}, Landroid/media/midi/MidiOutputPort;->-get1(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :pswitch_1
    :try_start_4
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-get0(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
