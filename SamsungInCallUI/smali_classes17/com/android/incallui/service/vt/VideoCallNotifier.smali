.class public Lcom/android/incallui/service/vt/VideoCallNotifier;
.super Ljava/lang/Object;
.source "VideoCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;,
        Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;,
        Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;,
        Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallNotifier - "

.field private static sInstance:Lcom/android/incallui/service/vt/VideoCallNotifier;


# instance fields
.field protected mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

.field private final mVideoCallMetricsListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoCallUiEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoDetailsListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoSessionEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallNotifier;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallNotifier;->sInstance:Lcom/android/incallui/service/vt/VideoCallNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666    # 0.9f

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoDetailsListener:Ljava/util/Set;

    .line 76
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallNotifier;->sInstance:Lcom/android/incallui/service/vt/VideoCallNotifier;

    return-object v0
.end method


# virtual methods
.method public addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;

    .prologue
    .line 143
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-interface {p1, v0}, Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;->onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    .line 150
    :cond_0
    return-void
.end method

.method public addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;

    .prologue
    .line 120
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    return-void
.end method

.method public addVideoDetailsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;

    .prologue
    .line 164
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoDetailsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public addVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    return-void
.end method

.method public handleCallSessionMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 203
    return-void
.end method

.method public notifyVideoCallUiEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;

    .line 182
    .local v0, "listener":Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;->onVideoCallUiEvent(I)V

    goto :goto_0

    .line 184
    .end local v0    # "listener":Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;
    :cond_0
    return-void
.end method

.method public notifyVideoDetailsChange(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoDetailsListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;

    .line 198
    .local v0, "listener":Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;->onVideoDetailsChanged(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 200
    .end local v0    # "listener":Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;
    :cond_0
    return-void
.end method

.method public notifyVideoMetricsChange(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 3
    .param p1, "metrics"    # Lcom/android/incallui/service/vt/VideoCallMetrics;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;

    .line 190
    .local v0, "listener":Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;->onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    goto :goto_0

    .line 193
    .end local v0    # "listener":Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;
    :cond_0
    return-void
.end method

.method public notifyVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;

    .line 176
    .local v0, "listener":Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;->onVideoSessionEvent(ILcom/android/incallui/Call;)V

    goto :goto_0

    .line 178
    .end local v0    # "listener":Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;
    :cond_0
    return-void
.end method

.method public removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    return-void
.end method

.method public removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-void
.end method

.method public removeVideoDetailsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoDetailsListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    return-void
.end method

.method public removeVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "VideoCallNotifier - tearDown"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoSessionEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallUiEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 87
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mVideoCallMetricsListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallNotifier;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    .line 89
    return-void
.end method
