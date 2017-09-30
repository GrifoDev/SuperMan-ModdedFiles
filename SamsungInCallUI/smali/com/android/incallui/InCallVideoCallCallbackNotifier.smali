.class public Lcom/android/incallui/InCallVideoCallCallbackNotifier;
.super Ljava/lang/Object;


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

    new-instance v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    invoke-direct {v0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666    # 0.9f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    return-object v0
.end method


# virtual methods
.method public addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public callDataUsageChanged(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallDataUsageChange(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callSessionEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallSessionEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callSessionEvent(Lcom/android/incallui/Call;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallSessionEvent(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cameraDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onCameraDimensionsChange(Lcom/android/incallui/Call;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public changeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 3

    const-string v0, "PSTNVT-InCallVideoCallCallbackNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeToVideoRequest call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new video state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onChangeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public downgradeToAudio(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onDowngradeToAudio(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public downgradeToAudioRequest(Lcom/android/incallui/Call;I)V
    .locals 3

    const-string v0, "PSTNVT-InCallVideoCallCallbackNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downgradeToAudioRequest call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new video state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onDowngradeToAudioRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peerDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peerPausedStateChanged(Lcom/android/incallui/Call;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onPeerPauseStateChanged(Lcom/android/incallui/Call;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public upgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoFail(ILcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public upgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 3

    const-string v0, "PSTNVT-InCallVideoCallCallbackNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgradeToVideoRequest call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new video state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public upgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public videoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onVideoQualityChanged(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
