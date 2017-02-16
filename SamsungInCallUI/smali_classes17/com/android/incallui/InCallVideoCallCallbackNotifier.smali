.class public Lcom/android/incallui/InCallVideoCallCallbackNotifier;
.super Ljava/lang/Object;
.source "InCallVideoCallCallbackNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;,
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;,
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PSTNVT-InCallVideoCallCallbackNotifier"

.field private static sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;


# instance fields
.field private final mSessionModificationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    invoke-direct {v0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666    # 0.9f

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    .line 63
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    return-object v0
.end method


# virtual methods
.method public addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .prologue
    .line 113
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public callDataUsageChanged(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 280
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallDataUsageChange(J)V

    goto :goto_0

    .line 282
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public callSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 207
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallSessionEvent(I)V

    goto :goto_0

    .line 209
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public callSessionEvent(Lcom/android/incallui/Call;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "event"    # I

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 219
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallSessionEvent(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 221
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public cameraDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 269
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onCameraDimensionsChange(Lcom/android/incallui/Call;II)V

    goto :goto_0

    .line 271
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    :cond_0
    return-void
.end method

.method public changeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 148
    const-string v1, "PSTNVT-InCallVideoCallCallbackNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeToVideoRequest call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new video state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 150
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onChangeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 152
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public downgradeToAudio(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 196
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onDowngradeToAudio(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 198
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public downgradeToAudioRequest(Lcom/android/incallui/Call;I)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 161
    const-string v1, "PSTNVT-InCallVideoCallCallbackNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downgradeToAudioRequest call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new video state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 163
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onDowngradeToAudioRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 165
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public peerDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 256
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V

    goto :goto_0

    .line 258
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    :cond_0
    return-void
.end method

.method public peerPausedStateChanged(Lcom/android/incallui/Call;Z)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "paused"    # Z

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 231
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onPeerPauseStateChanged(Lcom/android/incallui/Call;Z)V

    goto :goto_0

    .line 233
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method

.method public removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    return-void
.end method

.method public removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public upgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 185
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoFail(ILcom/android/incallui/Call;)V

    goto :goto_0

    .line 187
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public upgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 135
    const-string v1, "PSTNVT-InCallVideoCallCallbackNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeToVideoRequest call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new video state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 137
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 139
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public upgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 174
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 176
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public videoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoQuality"    # I

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 243
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onVideoQualityChanged(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 245
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method
