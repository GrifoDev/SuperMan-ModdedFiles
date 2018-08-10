.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/volume/MediaSessions$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionsCallbacks"
.end annotation


# instance fields
.field private mNextStream:I

.field private final mRemoteStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/session/MediaSession$Token;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    return-void
.end method

.method private findToken(I)Landroid/media/session/MediaSession$Token;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$Token;

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get9(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get9(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap2(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    :cond_1
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteRemoved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get9(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method public onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRemoteUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    :cond_1
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get9(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_7

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap8(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    iput v6, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    iget v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v4

    if-eq v3, v4, :cond_3

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    const/4 v0, 0x1

    :cond_3
    iget-object v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, -0x1

    iput v3, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    iput-object p2, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_6

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRemoteUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get9(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_6
    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .locals 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap2(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    move-result v0

    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRemoteVolumeChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", flag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap0(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get9(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowRequested(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStreamVolume(II)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->findToken(I)Landroid/media/session/MediaSession$Token;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStreamVolume: No token found for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStreamVolume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get5(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/MediaSessions;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/volume/MediaSessions;->setVolume(Landroid/media/session/MediaSession$Token;I)V

    return-void
.end method
