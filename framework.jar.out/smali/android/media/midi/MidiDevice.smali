.class public final Landroid/media/midi/MidiDevice;
.super Ljava/lang/Object;
.source "MidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDevice$MidiConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiDevice"

.field private static mMirroredDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/media/midi/MidiDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClientToken:Landroid/os/IBinder;

.field private final mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mDeviceToken:Landroid/os/IBinder;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mIsDeviceClosed:Z

.field private final mMidiManager:Landroid/media/midi/IMidiManager;

.field private mNativeHandle:J


# direct methods
.method static synthetic -get0(Landroid/media/midi/MidiDevice;)Landroid/media/midi/IMidiDeviceServer;
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    iput-object p2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    iput-object p3, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    iput-object p4, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private native native_mirrorToNative(Landroid/os/IBinder;I)J
.end method

.method private native native_removeFromNative(J)V
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->removeFromNative()V

    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, v4}, Landroid/media/midi/IMidiManager;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "MidiDevice"

    const-string/jumbo v3, "RemoteException in closeDevice"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public connectPorts(Landroid/media/midi/MidiInputPort;I)Landroid/media/midi/MidiDevice$MidiConnection;
    .locals 7

    const/4 v6, 0x0

    if-ltz p2, :cond_0

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v4

    if-lt p2, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "outputPortNumber out of range"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-boolean v4, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    if-eqz v4, :cond_2

    return-object v6

    :cond_2
    invoke-virtual {p1}, Landroid/media/midi/MidiInputPort;->claimFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v6

    :cond_3
    :try_start_0
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v4, v3, v2, p2}, Landroid/media/midi/IMidiDeviceServer;->connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_4

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    :cond_4
    new-instance v4, Landroid/media/midi/MidiDevice$MidiConnection;

    invoke-direct {v4, p0, v3, p1}, Landroid/media/midi/MidiDevice$MidiConnection;-><init>(Landroid/media/midi/MidiDevice;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "MidiDevice"

    const-string/jumbo v5, "RemoteException in connectPorts"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public mirrorToNative()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    return-wide v2

    :cond_1
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/midi/MidiDevice;->native_mirrorToNative(Landroid/os/IBinder;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    iget-wide v0, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed mirroring to native"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-wide v0, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public openInputPort(I)Landroid/media/midi/MidiInputPort;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v3, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    if-eqz v3, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v3, v2, p1}, Landroid/media/midi/IMidiDeviceServer;->openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v5

    :cond_1
    new-instance v3, Landroid/media/midi/MidiInputPort;

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-direct {v3, v4, v2, v1, p1}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MidiDevice"

    const-string/jumbo v4, "RemoteException in openInputPort"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public openOutputPort(I)Landroid/media/midi/MidiOutputPort;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v3, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    if-eqz v3, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v3, v2, p1}, Landroid/media/midi/IMidiDeviceServer;->openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v5

    :cond_1
    new-instance v3, Landroid/media/midi/MidiOutputPort;

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-direct {v3, v4, v2, v1, p1}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MidiDevice"

    const-string/jumbo v4, "RemoteException in openOutputPort"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public removeFromNative()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    invoke-direct {p0, v2, v3}, Landroid/media/midi/MidiDevice;->native_removeFromNative(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object v1, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_1
    sget-object v0, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MidiDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
