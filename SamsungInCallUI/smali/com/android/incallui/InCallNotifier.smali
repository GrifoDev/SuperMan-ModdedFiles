.class public Lcom/android/incallui/InCallNotifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallNotifier$InCallContentViewListener;,
        Lcom/android/incallui/InCallNotifier$VideoDetailsListener;,
        Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;,
        Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;,
        Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InCallNotifier"

.field private static sInstance:Lcom/android/incallui/InCallNotifier;


# instance fields
.field private final mInCallContentViewListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallNotifier$InCallContentViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

.field private final mVideoCallMetricsListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoCallUiEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoDetailsListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallNotifier$VideoDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoSessionEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/InCallNotifier;

    invoke-direct {v0}, Lcom/android/incallui/InCallNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallNotifier;->sInstance:Lcom/android/incallui/InCallNotifier;

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

    iput-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoDetailsListener:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallNotifier;->mInCallContentViewListener:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallNotifier;
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallNotifier;->sInstance:Lcom/android/incallui/InCallNotifier;

    return-object v0
.end method


# virtual methods
.method public addInCallContentViewListener(Lcom/android/incallui/InCallNotifier$InCallContentViewListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mInCallContentViewListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mInCallContentViewListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mInCallContentViewListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-interface {p1, v0}, Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;->onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    :cond_0
    return-void
.end method

.method public addVideoCallUiEventListener(Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addVideoDetailsListener(Lcom/android/incallui/InCallNotifier$VideoDetailsListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoDetailsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoSessionEventListener(Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public handleCallSessionMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notifyInCallContentViewChange(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mInCallContentViewListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallNotifier$InCallContentViewListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallNotifier$InCallContentViewListener;->onInCallContentViewChange(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyVideoCallUiEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;->onVideoCallUiEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyVideoDetailsChange(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoDetailsListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallNotifier$VideoDetailsListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallNotifier$VideoDetailsListener;->onVideoDetailsChanged(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyVideoMetricsChange(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2

    iput-object p1, p0, Lcom/android/incallui/InCallNotifier;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - notifyVideoMetricsChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallNotifier;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->toString(Lcom/android/incallui/service/vt/VideoCallMetrics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;->onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;->onVideoSessionEvent(ILcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeInCallContentViewListener(Lcom/android/incallui/InCallNotifier$InCallContentViewListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mInCallContentViewListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeVideoCallUiEventListener(Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeVideoDetailsListener(Lcom/android/incallui/InCallNotifier$VideoDetailsListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoDetailsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeVideoSessionEventListener(Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 3

    const-string v0, "InCallNotifier"

    const-string v1, "tearDown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/incallui/InCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallNotifier;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    return-void
.end method
