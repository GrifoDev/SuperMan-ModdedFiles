.class public final Landroid/telecom/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Phone$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private final mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallingPackage:Ljava/lang/String;

.field private final mCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mCanAddCall:Z

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Phone$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkVersion:I

.field private final mUnmodifiableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    iput-object p1, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iput-object p2, p0, Landroid/telecom/Phone;->mCallingPackage:Ljava/lang/String;

    iput p3, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    return-void
.end method

.method private checkCallTree(Landroid/telecom/ParcelableCall;)V
    .locals 5

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ParcelableCall %s has nonexistent child %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fireBringToForeground(Z)V
    .locals 3

    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onBringToForeground(Landroid/telecom/Phone;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireCallAdded(Landroid/telecom/Call;)V
    .locals 3

    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 3

    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V

    new-instance v2, Landroid/telecom/AudioState;

    invoke-direct {v2, p1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Phone$Listener;->onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireCallRemoved(Landroid/telecom/Call;)V
    .locals 3

    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireCanAddCallChanged(Z)V
    .locals 3

    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onCanAddCallChanged(Landroid/telecom/Phone;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireChangeInContent(I)V
    .locals 3

    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Phone$Listener;->onChangeInContent(Landroid/telecom/Phone;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireSilenceRinger()V
    .locals 3

    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, p0}, Landroid/telecom/Phone$Listener;->onSilenceRinger(Landroid/telecom/Phone;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Landroid/telecom/Phone$Listener;)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final canAddCall()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    return v0
.end method

.method final destroy()V
    .locals 5

    iget-object v3, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    :cond_1
    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call;->internalSetDisconnected()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    return-object v0
.end method

.method final internalAddCall(Landroid/telecom/ParcelableCall;)V
    .locals 7

    new-instance v0, Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v4

    iget-object v5, p0, Landroid/telecom/Phone;->mCallingPackage:Ljava/lang/String;

    iget v6, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/telecom/Call;-><init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;ILjava/lang/String;I)V

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Landroid/telecom/Phone;->fireCallAdded(Landroid/telecom/Call;)V

    return-void
.end method

.method final internalBringToForeground(Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireBringToForeground(Z)V

    return-void
.end method

.method final internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    :cond_0
    return-void
.end method

.method final internalChangeInContent(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireChangeInContent(I)V

    return-void
.end method

.method final internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    return-object v0
.end method

.method final internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->internalOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method final internalOnRttInitiationFailure(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalOnRttInitiationFailure(I)V

    :cond_0
    return-void
.end method

.method final internalOnRttUpgradeRequest(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalOnRttUpgradeRequest(I)V

    :cond_0
    return-void
.end method

.method final internalRemoveCall(Landroid/telecom/Call;)V
    .locals 3

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/Call;->internalGetCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    :cond_0
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallRemoved(Landroid/telecom/Call;)V

    return-void
.end method

.method final internalSetCanAddCall(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCanAddCallChanged(Z)V

    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalSetPostDialWait(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final internalSilenceRinger()V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Phone;->fireSilenceRinger()V

    return-void
.end method

.method final internalUpdateCall(Landroid/telecom/ParcelableCall;)V
    .locals 3

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final removeListener(Landroid/telecom/Phone$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final requestRcsObserver(II)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/InCallAdapter;->requestRcsObserver(II)V

    return-void
.end method

.method public final setAudioRoute(I)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public final setMuted(Z)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->mute(Z)V

    return-void
.end method

.method public final setProximitySensorOff(Z)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->turnProximitySensorOff(Z)V

    return-void
.end method

.method public final setProximitySensorOn()V
    .locals 1

    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->turnProximitySensorOn()V

    return-void
.end method
