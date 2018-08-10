.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private mNativeContext:J

.field private final mOnTerminate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;ZLjava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDatabase;

    iput-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    return-void
.end method

.method public static configure(Z)V
    .locals 0

    invoke-static {p0}, Landroid/mtp/MtpServer;->native_configure(Z)V

    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method public static final native native_configure(Z)V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_device_property_changed(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    iget-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->close()V

    iget-object v0, p0, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public sendDevicePropertyChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    return-void
.end method

.method public start()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
