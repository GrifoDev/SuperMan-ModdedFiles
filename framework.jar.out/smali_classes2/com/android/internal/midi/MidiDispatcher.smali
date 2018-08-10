.class public final Lcom/android/internal/midi/MidiDispatcher;
.super Landroid/media/midi/MidiReceiver;
.source "MidiDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiDispatcher$1;,
        Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;
    }
.end annotation


# instance fields
.field private final mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

.field private final mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/media/midi/MidiReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSender:Landroid/media/midi/MidiSender;


# direct methods
.method static synthetic -get0(Lcom/android/internal/midi/MidiDispatcher;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/midi/MidiDispatcher;-><init>(Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/internal/midi/MidiDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/midi/MidiDispatcher$1;-><init>(Lcom/android/internal/midi/MidiDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mSender:Landroid/media/midi/MidiSender;

    iput-object p1, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    return-void
.end method


# virtual methods
.method public getReceiverCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSender()Landroid/media/midi/MidiSender;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mSender:Landroid/media/midi/MidiSender;

    return-object v0
.end method

.method public onFlush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiReceiver;

    :try_start_0
    invoke-virtual {v1}, Landroid/media/midi/MidiReceiver;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    invoke-interface {v3, v1, v0}, Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;->onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSend([BIIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiReceiver;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v1, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    invoke-interface {v1, v0, v6}, Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;->onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    return-void
.end method
