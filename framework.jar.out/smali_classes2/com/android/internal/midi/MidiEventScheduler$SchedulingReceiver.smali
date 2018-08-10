.class Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;
.super Landroid/media/midi/MidiReceiver;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/MidiEventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SchedulingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/midi/MidiEventScheduler;


# direct methods
.method private constructor <init>(Lcom/android/internal/midi/MidiEventScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;->this$0:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/midi/MidiEventScheduler;Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;-><init>(Lcom/android/internal/midi/MidiEventScheduler;)V

    return-void
.end method


# virtual methods
.method public onFlush()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;->this$0:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiEventScheduler;->flush()V

    return-void
.end method

.method public onSend([BIIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;->this$0:Lcom/android/internal/midi/MidiEventScheduler;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/midi/MidiEventScheduler;->-wrap0(Lcom/android/internal/midi/MidiEventScheduler;[BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;->this$0:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v0, v6}, Lcom/android/internal/midi/MidiEventScheduler;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    :cond_0
    return-void
.end method
